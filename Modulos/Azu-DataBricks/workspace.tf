##### Provider #####

terraform {

  required_version = ">= 0.14.9"

  required_providers {
    azurerm = {
      source                = "hashicorp/azurerm"
      version               = "3.48.0"
      configuration_aliases = [azurerm, azurerm.ditiidentity]
    }
    databricks = {
      source = "databricks/databricks"
    }
  }
}

##### Vnet #####

data "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  resource_group_name = var.rg_vnet
  provider            = azurerm
}

##### Subnets Databricks #####

resource "azurerm_subnet" "public" {
  name                 = var.subnet_public_name
  resource_group_name  = var.rg_vnet
  virtual_network_name = data.azurerm_virtual_network.vnet.name
  address_prefixes     = var.subnet_public_ip
  provider             = azurerm
  delegation {
    name = "databricks-del-pub-${var.databricks_name}"

    service_delegation {
      actions = [
        "Microsoft.Network/virtualNetworks/subnets/join/action",
        "Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action",
        "Microsoft.Network/virtualNetworks/subnets/unprepareNetworkPolicies/action",
      ]
      name = "Microsoft.Databricks/workspaces"
    }
  }
}

resource "azurerm_subnet" "private" {
  name                 = var.subnet_private_name
  resource_group_name  = var.rg_vnet
  virtual_network_name = data.azurerm_virtual_network.vnet.name
  address_prefixes     = var.subnet_private_ip
  provider             = azurerm
  delegation {
    name = "databricks-del-pub-${var.databricks_name}"

    service_delegation {
      actions = [
        "Microsoft.Network/virtualNetworks/subnets/join/action",
        "Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action",
        "Microsoft.Network/virtualNetworks/subnets/unprepareNetworkPolicies/action",
      ]
      name = "Microsoft.Databricks/workspaces"
    }
  }
}

data "azurerm_subnet" "endpoint" {
  name                 = var.subnet_endpoint_name
  resource_group_name  = var.rg_vnet
  virtual_network_name = data.azurerm_virtual_network.vnet.name
  provider             = azurerm
}

##### Private Endpoint #####

resource "azurerm_private_endpoint" "databricks" {
  provider            = azurerm
  depends_on          = [azurerm_databricks_workspace.databricksw]
  name                = var.private_endpoint_name
  location            = var.location
  resource_group_name = var.rg_pe
  subnet_id           = data.azurerm_subnet.endpoint.id

  private_service_connection {
    name                           = var.databricks_psc
    is_manual_connection           = false
    private_connection_resource_id = azurerm_databricks_workspace.databricksw.id
    subresource_names              = ["databricks_ui_api"]
  }

  private_dns_zone_group {
    name                 = data.azurerm_private_dns_zone.dns_zone.name
    private_dns_zone_ids = [data.azurerm_private_dns_zone.dns_zone.id]
  }


}


##### NSG #####

resource "azurerm_subnet_network_security_group_association" "private" {
  subnet_id                 = azurerm_subnet.private.id
  network_security_group_id = azurerm_network_security_group.nsg.id
  provider                  = azurerm
}

resource "azurerm_subnet_network_security_group_association" "public" {
  subnet_id                 = azurerm_subnet.public.id
  network_security_group_id = azurerm_network_security_group.nsg.id
  provider                  = azurerm
}

resource "azurerm_network_security_group" "nsg" {
  name                = var.databricks_name
  location            = var.location
  resource_group_name = var.rg_nsg
  provider            = azurerm
}

##### Databricks Workspace #####
resource "azurerm_databricks_workspace" "databricksw" {
  provider                              = azurerm
  name                                  = var.databricks_name
  resource_group_name                   = var.rg_name
  location                              = var.location
  sku                                   = var.sku
  tags                                  = var.tags
  public_network_access_enabled         = var.pubaccess #false
  network_security_group_rules_required = "NoAzureDatabricksRules"
  customer_managed_key_enabled          = true
  infrastructure_encryption_enabled     = true

  custom_parameters {
    no_public_ip             = true
    virtual_network_id       = data.azurerm_virtual_network.vnet.id
    public_subnet_name       = azurerm_subnet.public.name
    private_subnet_name      = azurerm_subnet.private.name
    storage_account_name     = var.st_name_enable ? "stazu${var.tags.ambiente}bra${var.databricks_st_name}" : null
    storage_account_sku_name = var.tags.ambiente == "dv" || var.tags.ambiente == "ho" ? "Standard_LRS" : "Standard_ZRS"

    public_subnet_network_security_group_association_id  = azurerm_subnet_network_security_group_association.public.id
    private_subnet_network_security_group_association_id = azurerm_subnet_network_security_group_association.private.id
  }
  depends_on = [
    azurerm_subnet_network_security_group_association.public,
    azurerm_subnet_network_security_group_association.private
  ]
}


resource "databricks_workspace_conf" "this" {
  custom_config = {
    "enableIpAccessLists" = true
  }

}

resource "databricks_ip_access_list" "allowed-list" {
  label        = var.label
  list_type    = var.list_type
  ip_addresses = var.ip_addresses
  depends_on   = [databricks_workspace_conf.this]
}

##### Private DNS Zone #####

data "azurerm_private_dns_zone" "dns_zone" {
  name                = var.dns_zone_name
  resource_group_name = var.rg_dns
  provider            = azurerm.ditiidentity
}

##### Registro CNAME Databricks #####

resource "azurerm_private_dns_cname_record" "name" {
  name                = var.dns_record
  zone_name           = data.azurerm_private_dns_zone.dns_zone.name
  resource_group_name = var.rg_dns
  ttl                 = 300
  record              = azurerm_databricks_workspace.databricksw.workspace_url
  provider            = azurerm.ditiidentity
  depends_on = [
    azurerm_databricks_workspace.databricksw
  ]
}
