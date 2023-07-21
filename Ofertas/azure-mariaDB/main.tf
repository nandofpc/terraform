module "DataRG" {
  source = "git::https://pusrdvop:OTA5OTk5OTQ5NjM5OnUGGcZ4iOMS5I6eMPBMKf+VRrtA@bitbucket.bradesco.com.br:8443/scm/cpppv/cloud-portal-modulos-iac.git//Azu-DataRG?ref=Azu-DataRG_V2"
  rg_name = var.rg_name
}

module "mariadbserver" {
  source = "git::https://pusrdvop:OTA5OTk5OTQ5NjM5OnUGGcZ4iOMS5I6eMPBMKf+VRrtA@bitbucket.bradesco.com.br:8443/scm/cpppv/cloud-portal-modulos-iac.git//Azu-MariaDB_Server?ref=Azu-MariaDB_Server_V13"
 
  tags = module.tags_finops.tags
  location = module.DataRG.rg_out.location
  rg_name = module.DataRG.rg_out.name
  admin_username  = var.admin_username
  admin_password  = var.admin_password
  mariadb_name = var.mariadb_name
  skuname   = var.skuname
  storagemb = var.storagemb
  mariadbversion    = var.mariadbversion
  retbkp     = var.retbkp
}



module "mariadbdatabase" {
  source = "git::https://pusrdvop:OTA5OTk5OTQ5NjM5OnUGGcZ4iOMS5I6eMPBMKf+VRrtA@bitbucket.bradesco.com.br:8443/scm/cpppv/cloud-portal-modulos-iac.git//Azu-MariaDB_Database?ref=Azu-MariaDB_Database_V1"
  db_name                = var.db_name
  rg_name             = module.DataRG.rg_out.name
  servername         = module.mariadbserver.mariadbserver.name
  #tags = module.tags_finops.tags
  #location = module.DataRG.rg_out.location
}


# Module Tags FinOps
module "tags_finops" {
  source = "git::https://pusrdvop:OTA5OTk5OTQ5NjM5OnUGGcZ4iOMS5I6eMPBMKf+VRrtA@bitbucket.bradesco.com.br:8443/scm/cpppv/cloud-portal-modulos-iac.git//Azu-Tags_FinOps?ref=Azu-Tags_FinOps_V1"
  # Tags
  centro_custo = var.centro_custo
  #tags_custom  = var.tags_custom
  empresa = var.empresa
  departamento = var.departamento
  app = var.app
  componente = var.componente
  ambiente = var.ambiente
  bo = var.bo
  to = var.to
  gerenciamento = var.gerenciamento
}
