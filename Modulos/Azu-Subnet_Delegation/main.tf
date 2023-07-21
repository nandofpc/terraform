data "azurerm_route_table" "rt" {
  name                = var.rt_name
  resource_group_name = var.rg_name
}

data "azurerm_network_security_group" "nsg" {
  name                = var.nsg_name
  resource_group_name = var.rg_name_nsg
}


data "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  resource_group_name = var.rg_name_vnet

}

locals {
  subnets_map = { for index, subnet in var.subnets : index => subnet }
}

resource "azurerm_subnet" "subnet" {
  for_each                                      = local.subnets_map
  name                                          = "snet${var.ambiente}${each.value.name}"
  virtual_network_name                          = data.azurerm_virtual_network.vnet.name
  resource_group_name                           = data.azurerm_virtual_network.vnet.resource_group_name
  address_prefixes                              = each.value.address_prefixes
  private_endpoint_network_policies_enabled     = var.pe-net_policy
  private_link_service_network_policies_enabled = var.pl-net_policy
  service_endpoints                             = var.enable_service_endpoints ? var.service_endpoints : null


  dynamic "delegation" {
    for_each = var.enable_service_delegation ? [1] : []
    content {
      name = var.delegation_name
      dynamic "service_delegation" {
        for_each = var.enable_service_delegation ? [1] : []
        content {
          name    = each.value.service-delegation_name
        }

      }

    }
  }
}

resource "azurerm_subnet_route_table_association" "rtasso" {
  for_each       = local.subnets_map
  subnet_id      = azurerm_subnet.subnet[each.key].id
  route_table_id = data.azurerm_route_table.rt.id
}


resource "azurerm_subnet_network_security_group_association" "nsg_association" {
  for_each                  = local.subnets_map
  subnet_id                 = azurerm_subnet.subnet[each.key].id
  network_security_group_id = data.azurerm_network_security_group.nsg.id
} 
