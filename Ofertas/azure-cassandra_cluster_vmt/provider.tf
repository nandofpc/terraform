# Azurerm Provider configuration
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.54.0"
    }
  }
  required_version = ">= 0.14.6"
}

provider "azurerm" {
  features {}
}

provider "azurerm" {
  features {}
  subscription_id = var.subscription_id2
  client_id       = var.client_id2
  client_secret   = var.client_secret2
  tenant_id       = var.tenant_id2
  alias           = "ditigerenciamento"
}

provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
  alias           = "ditidentity"
}


