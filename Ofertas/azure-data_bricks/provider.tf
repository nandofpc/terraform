terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.48.0"
    }
    databricks = {
      source = "databricks/databricks"
    }
  }
  required_version = ">= 0.14.9"
}

provider "azurerm" {
  features {}
}
provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
  alias           = "ditiidentity"
}
