#-----------------------------------
# Provider
#-----------------------------------

terraform {

  required_version = ">= 0.14.9"

  required_providers {
    azurerm = {
      source                = "hashicorp/azurerm"
      version               = "3.48.0"
      configuration_aliases = [azurerm, azurerm.ditiidentity, azurerm.ditigerenciamento]
    }
    databricks = {
        source  = "databricks/databricks"
        version = "1.14.3"
    }
  }
}


provider "databricks" {
  host  = data.azurerm_databricks_workspace.workspace.workspace_url
  token = var.databricks_pat_token
  auth_type = "pat"
}

data "azurerm_resource_group" "rg" {
  name = var.databricks_rg
}

data "azurerm_databricks_workspace" "workspace" {
  name                = var.workspace_name
  resource_group_name = data.azurerm_resource_group.rg.name
}

resource "databricks_cluster" "cluster" {
  cluster_name            = var.cluster_name
  spark_version           = var.spark_version
  node_type_id            = var.node_type_id
  autotermination_minutes = var.autotermination_minutes
   driver_node_type_id     = var.driver_node_type_id
  

  custom_tags = {
    "resource_class" = var.resource_class
    "Pinned"   = var.pinned ? "true" :"false"
  }


  dynamic "autoscale" {
    for_each = var.enable_autoscale ? [1] : []
    content {
      min_workers = var.min_workers
      max_workers = var.max_workers
    }
  }

  spark_conf = {
    "spark.databricks.delta.preview.enabled" = var.spark_delta_preview
    "spark.databricks.cluster.profile"       = var.runtime_version
  }

  num_workers = var.enable_autoscale ? null : var.num_workers
}

