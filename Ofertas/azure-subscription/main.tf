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

module "rg" {
  source   = "git::https://PUSRBTRO:OTY2MDk4NDE0MjU0OhnkWwR6XfA+Hq9QjeEPQ4pwA%2fS0@bitbucket.bradesco.com.br:8443/scm/cpppv/cloud-portal-modulos-iac.git//Azu-RG?ref=Azu-RG_V5"
  rg_name  = var.rg_name
  location = var.location
  tags     = module.tags_finops.tags
}

module "vnet" {
  source           = "git::https://PUSRBTRO:OTY2MDk4NDE0MjU0OhnkWwR6XfA+Hq9QjeEPQ4pwA%2fS0@bitbucket.bradesco.com.br:8443/scm/cpppv/cloud-portal-modulos-iac.git//Azu-Vnet?ref=Azu-Vnet_V12"
  vnet_name        = var.vnet_name
  rg_name          = module.rg.rg.name
  location         = var.location
  address_space    = var.address_space
  dns_servers      = var.ambiente == "pr" ? [var.dns1, var.dns2] : [var.dns3, var.dns4]
  tags             = module.tags_finops.tags
  allowaccessvnet  = var.allowaccessvnet
  allowtrafficvnet = var.allowtrafficvnet
  remotegate       = var.remotegate
  allowaccesshub   = var.allowaccesshub
  allowtraffichub  = var.allowtraffichub
  gatetransithub   = var.gatetransithub
  remotegatehub    = var.remotegatehub
  remotegatedmz    = var.remotegatedmz
  allowaccessdmz   = var.allowaccessdmz
  allowtrafficdmz  = var.allowtrafficdmz
  vnet_hub_name    = var.vnet_hub_name
  rg_hub_name      = var.rg_hub_name
  rg_dmz_name      = var.rg_dmz_name
  vnet_dmz_name    = var.vnet_dmz_name
  rg_pr_dmz_name   = var.rg_pr_dmz_name
  vnet_pr_dmz_name = var.vnet_pr_dmz_name
  ambiente         = var.ambiente
  dominio          = var.dominio
  gatetransitdmz   = var.gatetransitdmz
  remotegatevnet   = var.remotegatevnet
  providers = {
    azurerm.hub = azurerm.hub
    azurerm.dmz = azurerm.dmz
  }
  depends_on = [
    module.rg
  ]
}