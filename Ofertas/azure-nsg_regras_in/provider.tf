terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.34.0"
    }
  }
  required_version = ">= 0.12"
}

# Azurerm Provider configuration VRA
provider "azurerm" {
  features {}
  alias = "nsg"
}

provider "azurerm" {
  features {}
  subscription_id = "717cce4c-28a1-4d71-ba56-17c0d44ba2ad"
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
  alias           = "diti"
} 
 