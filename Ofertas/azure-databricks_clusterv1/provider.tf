terraform {
  required_version = ">= 0.14.9"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version               = "3.48.0"
    }
    databricks = {
      source  = "databricks/databricks"
      version = "1.14.3"
    }
  }
}

provider "databricks" {
  token = var.databricks_pat_token
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

provider "azurerm" {
  features {}
  subscription_id = var.subscription_id2
  client_id       = var.client_id2
  client_secret   = var.client_secret2
  tenant_id       = var.tenant_id2
  alias           = "ditigerenciamento"
}

