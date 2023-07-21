terraform{

  required_version = ">=0.12"

  required_providers {
    azurerm = {
      source                = "hashicorp/azurerm"
      version               = "3.34.0"
      configuration_aliases = [azurerm.nsg,azurerm.diti]
    }
  }
}

provider "azurerm" {
  features {}
}
#-------------------------------------
# Data para rg
#-------------------------------------

data "azurerm_resource_group" "rg" {
  name     = var.rg_name
  provider = azurerm.nsg
  
}

#-----------------------------------
# Data para st
#-----------------------------------

data "azurerm_storage_account" "st" {
    name = var.staccount_name
    resource_group_name = var.strg_name
    provider = azurerm.diti
}

#-----------------------------------
# Data para workspace
#-----------------------------------

data "azurerm_log_analytics_workspace" "loganalwork" {
    name                = var.loganalywork_name
    resource_group_name = var.loganalyworkrg_name
    provider            = azurerm.diti
}

#-----------------------------------
# Data para watcher
#-----------------------------------

data "azurerm_network_watcher" "netwat" {
    name                = var.netwatcher_name
    resource_group_name = var.netwatcherrg_name
    provider            = azurerm.nsg
}

#-----------------------------------
# Resource para NSG
#-----------------------------------
resource "azurerm_network_security_group" "nsg" {
  name                = var.nsg_name
  resource_group_name = var.rg_name
  location            = var.location
  tags                = var.tags 
  
}

#-----------------------------------
# Resource para regras allow
#-----------------------------------

resource "azurerm_network_security_rule" "regras_entrada" {
  count                       = length(var.regras_entrada)
  resource_group_name         = azurerm_network_security_group.nsg.resource_group_name
  name                        = "regra${count.index}"
  priority                    = "${var.prioridade + ((var.index_prioridade)* count.index)}"
  direction                   = var.direcao
  access                      = var.regra_acesso
  source_port_ranges          = var.porta_origem
  protocol                    = var.protocolo
  destination_port_ranges     = var.porta_destino
  source_address_prefix       = var.origem[count.index]
  destination_address_prefix  = var.destino_prefix[count.index]
  network_security_group_name = azurerm_network_security_group.nsg.name 
  provider                    = azurerm.nsg
  
  depends_on = [
    azurerm_network_security_group.nsg 
  ] 
} 

#--------------------------------------
# Resource para regras deny
#--------------------------------------

resource "azurerm_network_security_rule" "regras_deny" {
  name                        = "regra19"
  priority                    = 1000
  direction                   = "Inbound"
  access                      = "Deny"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_ranges     = ["22","3389"]
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_network_security_group.nsg.resource_group_name
  network_security_group_name = azurerm_network_security_group.nsg.name
  provider                    = azurerm.nsg
  
  depends_on = [
    azurerm_network_security_group.nsg 
  ] 
}

#-----------------------------------
# Resource watcher flow log
#-----------------------------------

resource "azurerm_network_watcher_flow_log" "app1_network_logs" {
  network_watcher_name = data.azurerm_network_watcher.netwat.name
  resource_group_name  = data.azurerm_network_watcher.netwat.resource_group_name
  name = var.flowlog_name
  
  network_security_group_id = azurerm_network_security_group.nsg.id
  storage_account_id        = data.azurerm_storage_account.st.id
  enabled                   = true
  provider                  = azurerm.nsg

  retention_policy {
    enabled = true
    days    = 90 

  }

  traffic_analytics {
    enabled               = true
    workspace_id          = data.azurerm_log_analytics_workspace.loganalwork.workspace_id
    workspace_region      = data.azurerm_log_analytics_workspace.loganalwork.location
    workspace_resource_id = data.azurerm_log_analytics_workspace.loganalwork.id
    interval_in_minutes   = 10
   }

  depends_on = [
    azurerm_network_security_group.nsg
  ]
}  
 


