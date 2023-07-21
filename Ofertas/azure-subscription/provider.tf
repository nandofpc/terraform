# Azurerm Provider configuration
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.40"
    }
  }
  required_version = ">= 0.14.9"
}

# Azurerm Provider configuration
provider "azurerm" {
  features {}
}

provider "azurerm" {
  features {}
  alias           = "hub"
  client_secret   = var.client_secret
  subscription_id = var.subscription_id #"209c53d5-2291-4cca-8e4f-f0f2de6772ab"
  client_id       = var.client_id
  tenant_id       = var.tenant_id       #"ccd25372-eb59-436a-ad74-78a49d784cf3"
}

provider "azurerm" {
  features {}
  alias           = "dmz"
  subscription_id = var.subscription_id2 #"a77d9247-bca9-437b-a085-bf8c90411b37"
  tenant_id       = var.tenant_id2       #"ccd25372-eb59-436a-ad74-78a49d784cf3"
  client_id       = var.client_id2
  client_secret   = var.client_secret2

}

