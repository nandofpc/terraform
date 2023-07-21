location                = "eastus2"
cluster_name            = "databricks-cluster" 
spark_version           = "8.4.x-scala2.12"
node_type_id            = "Standard_DS3_v2"
autotermination_minutes = 120
num_workers             = 1
workspace_name          = "dbwazudvbrateste002"//"dbwazudvbrateste002" // informações workspace "databricksbra-workspace"//
databricks_rg           = "rg-ho-testevra" //rg-ho-testevra" rgdvdadoseanalyticstransc" // colocar dentro no mesmo RG
databricks_pat_token    = "dapi8ef0517e0dcf1ecc483eeb55a1f6e712" //aguardando o token para fazer a validação do workspace
spark_delta_preview     = true
resource_class          = "SingleNode"
runtime_version         = "9.0.x-cpu-ml-scala2.12"
min_workers             = 1
max_workers             = 5
enable_autoscale        = true
pinned                  = true
driver_node_type_id     = "Standard_DS3_v2"



