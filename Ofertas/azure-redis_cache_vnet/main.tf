module "DataRG" {
  source  = "git::https://pusrdvop:OTA5OTk5OTQ5NjM5OnUGGcZ4iOMS5I6eMPBMKf+VRrtA@bitbucket.bradesco.com.br:8443/scm/cpppv/cloud-portal-modulos-iac.git//Azu-DataRG?ref=Azu-DataRG_V2"
  rg_name = var.rg_name
}

module "redis" {
  source         = "git::https://pusrdvop:OTA5OTk5OTQ5NjM5OnUGGcZ4iOMS5I6eMPBMKf+VRrtA@bitbucket.bradesco.com.br:8443/scm/cpppv/cloud-portal-modulos-iac.git//Azu-RedisCache_Vnet?ref=Azu-RedisCache_Vnet_V1"
  redis_name     = var.redis_name
  location       = var.location
  rg_name        = var.rg_name
  capacity       = var.capacity
  vnet_name      = var.vnet_name
  vnet_address   = var.vnet_address
  subnet_name    = var.subnet_name
  subnet_address = var.subnet_address
  tags           = module.tags_finops.tags

}

# Module Tags FinOps
module "tags_finops" {
  source        = "git::https://pusrdvop:OTA5OTk5OTQ5NjM5OnUGGcZ4iOMS5I6eMPBMKf+VRrtA@bitbucket.bradesco.com.br:8443/scm/cpppv/cloud-portal-modulos-iac.git//Azu-Tags_FinOps?ref=Azu-Tags_FinOps_V1"
  centro_custo  = var.centro_custo
  empresa       = var.empresa
  departamento  = var.departamento
  app           = var.app
  componente    = var.componente
  ambiente      = var.ambiente
  bo            = var.bo
  to            = var.to
  gerenciamento = var.gerenciamento  
}

