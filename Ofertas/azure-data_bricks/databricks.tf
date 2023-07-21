module "databricksw" {
  source                = "git::https://PUSRBTRO:OTY2MDk4NDE0MjU0OhnkWwR6XfA+Hq9QjeEPQ4pwA%2fS0@bitbucket.bradesco.com.br:8443/scm/cpppv/cloud-portal-modulos-iac.git//Azu-DataBricks?ref=Azu-DataBricks_V45"
  databricks_name       = var.databricks_name
  rg_name               = var.rg_name
  location              = var.location
  sku                   = var.sku
  tags                  = module.tags_finops.tags
  vnet_name             = var.vnet_name
  subnet_public_name    = var.subnet_public_name
  st_name_enable        = var.st_name_enable
  subnet_private_name   = var.subnet_private_name
  subnet_private_ip     = var.subnet_private_ip
  subnet_public_ip      = var.subnet_public_ip
  subnet_endpoint_name  = var.subnet_endpoint_name
  private_endpoint_name = var.private_endpoint_name
  databricks_psc        = var.databricks_psc
  dns_record            = var.dns_record
  dns_zone_name         = var.dns_zone_name
  rg_dns                = var.rg_dns
  rg_vnet               = var.rg_vnet
  databricks_st_name    = var.databricks_st_name
  rg_pe                 = var.rg_pe
  rg_nsg                = var.rg_nsg
  label                 = var.label
  list_type             = var.list_type
  ip_addresses          = var.ip_addresses
  pubaccess             = var.pubaccess
  providers = {
    azurerm              = azurerm
    azurerm.ditiidentity = azurerm.ditiidentity
  }
}

module "tags_finops" {
  source        = "git::https://PUSRBTRO:OTY2MDk4NDE0MjU0OhnkWwR6XfA+Hq9QjeEPQ4pwA%2fS0@bitbucket.bradesco.com.br:8443/scm/cpppv/cloud-portal-modulos-iac.git//Azu-Tags_FinOps?ref=Azu-Tags_FinOps_V1"
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
