# Module Redis

module "redis" {
  source                = "git::https://pusrbtro:OTY2MDk4NDE0MjU0OhnkWwR6XfA+Hq9QjeEPQ4pwA%2fS0@bitbucket.bradesco.com.br:8443/scm/cpppv/cloud-portal-modulos-iac.git//Azu-RedisCache_Private?ref=Azu-RedisCache_Private_V9"
  
  redis_name            = var.redis_name
  location              = var.location
  rg_name               = var.rg_name
  rg_name_vnet          = var.rg_name_vnet
  rg_name_dns_zone      = var.rg_name_dns_zone
  rg_name_pe            = var.rg_name_pe
  capacity              = var.capacity
  family                = var.family
  sku_name              = var.sku_name
  vnet_name             = var.vnet_name
  subnet_name           = var.subnet_name
  private_endpoint_name = var.private_endpoint_name
  psc_name              = var.psc_name  
  dns_zone_name         = var.dns_zone_name
  zones                 = var.zones
  replica               = var.replica
  tags                  = module.tags_finops.tags

  providers = {
    azurerm      = azurerm
    azurerm.link = azurerm.link
  }
}


# Module Tags FinOps

module "tags_finops" {
  source        = "git::https://pusrbtro:OTY2MDk4NDE0MjU0OhnkWwR6XfA+Hq9QjeEPQ4pwA%2fS0@bitbucket.bradesco.com.br:8443/scm/cpppv/cloud-portal-modulos-iac.git//Azu-Tags_FinOps?ref=Azu-Tags_FinOps_V1"
  
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


