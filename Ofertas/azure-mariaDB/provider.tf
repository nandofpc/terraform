# Azurerm Provider configuration
terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.30.0"
    }
  }
  required_version = ">= 0.14.9"
}
# Azurerm Provider configuration
provider "azurerm" {
features {}
}