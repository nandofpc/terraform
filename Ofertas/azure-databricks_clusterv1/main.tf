
module "databricks_clusterv1" {
  source                  = "git::https://pusrdvop:OTA5OTk5OTQ5NjM5OnUGGcZ4iOMS5I6eMPBMKf+VRrtA@bitbucket.bradesco.com.br:8443/scm/cpppv/cloud-portal-modulos-iac.git//Azu-Databricks_ClusterV1/?ref=Azu-Databricks_ClusterV1_V11"
  databricks_pat_token  = var.databricks_pat_token
  location              = var.location
  sku                   = var.sku
  cluster_name            = var.cluster_name
  spark_version           = var.spark_version
  autotermination_minutes = var.autotermination_minutes
  spark_delta_preview     = var.spark_delta_preview
  num_workers             = var.num_workers
  workspace_name          = var.workspace_name
  databricks_rg           = var.databricks_rg
  driver_node_type_id     = var.driver_node_type_id
  min_workers             = var.min_workers
  max_workers             = var.max_workers
  runtime_version         = var.runtime_version
  resource_class          = var.resource_class
  pinned                  = var.pinned
  node_type_id            = var.node_type_id
  enable_autoscale        = var.enable_autoscale
  providers = {
    azurerm                   = azurerm
    azurerm.ditiidentity      = azurerm.ditiidentity 
    azurerm.ditigerenciamento = azurerm.ditigerenciamento
  }
  
}











