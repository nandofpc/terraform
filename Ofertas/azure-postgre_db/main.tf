module "DataRG" {
  source  = "git::https://pusrbtro:OTY2MDk4NDE0MjU0OhnkWwR6XfA+Hq9QjeEPQ4pwA%2fS0@bitbucket.bradesco.com.br:8443/scm/cpppv/cloud-portal-modulos-iac.git//Azu-DataRG?ref=Azu-DataRG_V2"
  rg_name = var.rg_name
}

module "Tags_FinOps" {
  source        = "git::https://pusrbtro:OTY2MDk4NDE0MjU0OhnkWwR6XfA+Hq9QjeEPQ4pwA%2fS0@bitbucket.bradesco.com.br:8443/scm/cpppv/cloud-portal-modulos-iac.git//Azu-Tags_FinOps?ref=Azu-Tags_FinOps_V1"
  empresa       = var.empresa
  centro_custo  = var.centro_custo
  departamento  = var.departamento
  app           = var.app
  componente    = var.componente
  ambiente      = var.ambiente
  bo            = var.bo
  to            = var.to
  gerenciamento = var.gerenciamento
}
module "Tags_BackupPass" {
  source          = "git::https://pusrbtro:OTY2MDk4NDE0MjU0OhnkWwR6XfA+Hq9QjeEPQ4pwA%2fS0@bitbucket.bradesco.com.br:8443/scm/cpppv/cloud-portal-modulos-iac.git//Azu-Tags_BackupPass?ref=Azu-Tags_BackupPass_V1"
  bkp-retencao    = var.bkp-retencao
  bkp-segmento    = var.bkp-segmento
  bkp-criticidade = var.bkp-criticidade
  bkp-ambiente    = var.bkp-ambiente

}

module "postgre" {
  source = "git::https://pusrbtro:OTY2MDk4NDE0MjU0OhnkWwR6XfA+Hq9QjeEPQ4pwA%2fS0@bitbucket.bradesco.com.br:8443/scm/cpppv/cloud-portal-modulos-iac.git//Azu-Postgre_db?ref=Azu-Postgre_db_V7"

  // Vars Postgre

  postname = var.postname
  location = module.DataRG.rg_out.location
  rg_name  = module.DataRG.rg_out.name

  sku         = var.sku
  pg_version  = var.pg_version
  storagesize = var.storagesize
  retention   = var.retention
  auto_grow   = var.auto_grow

  geo_redundant_backup      = var.geo_redundant_backup
  minimal_tls               = var.minimal_tls
  ssl_enforcement           = var.ssl_enforcement
  public_network            = var.public_network
  infrastructure_encryption = var.infrastructure_encryption

  tags    = module.Tags_FinOps.tags
  tagsbkp = module.Tags_BackupPass.tags

  // Vars Key-vault Postgres

  name_key_vault       = var.name_key_vault
  rg_name_key_vault    = var.rg_name_key_vault
  name_secret_user     = var.name_secret_user
  name_secret_password = var.name_secret_password

  // Vars Postgre Database

  name_postdb      = var.name_postdb
  charset_postdb   = var.charset_postdb
  collation_postdb = var.collation_postdb

  // Vars Postgre Rules
  ignore_endpoint_postrule = var.ignore_endpoint_postrule

  // Vars datas

  gerenciamento_vnet_name    = var.gerenciamento_vnet_name
  gerenciamento_vnet_rg_name = var.gerenciamento_vnet_rg_name
  jump_subnet_name           = var.jump_subnet_name

  vnet_name    = var.vnet_name
  rg_name_vnet = var.rg_name_vnet
  subnet_name  = var.subnet_name

  dns_zone_name    = var.dns_zone_name
  rg_name_dns_zone = var.rg_name_dns_zone

  // Vars Endpoint postgre_pe

  private_endpoint_name = var.private_endpoint_name
  rg_name_pe            = var.rg_name_pe
  psc_name              = var.psc_name
  is_manual_connection  = var.is_manual_connection

  providers = {
    azurerm                   = azurerm
    azurerm.ditiidentity      = azurerm.ditiidentity
    azurerm.ditigerenciamento = azurerm.ditigerenciamento
  }
  
}
