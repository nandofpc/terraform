module "nsg" {
  source = "git::https://pusrbtro:OTY2MDk4NDE0MjU0OhnkWwR6XfA+Hq9QjeEPQ4pwA%2fS0@bitbucket.bradesco.com.br:8443/scm/cpppv/cloud-portal-modulos-iac.git//Azu-Nsg_Regras_In/?ref=Azu-Nsg_Regras_In_V31"

  staccount_name      = var.staccount_name
  strg_name           = var.strg_name
  loganalywork_name   = var.loganalywork_name
  loganalyworkrg_name = var.loganalyworkrg_name
  netwatcher_name     = var.netwatcher_name
  netwatcherrg_name   = var.netwatcherrg_name
  nsg_name            = var.nsg_name
  rg_name             = var.rg_name
  location            = var.location
  flowlog_name        = var.flowlog_name
  porta_destino       = var.porta_destino
  regras_entrada      = var.regras_entrada
  prioridade          = var.prioridade
  index_prioridade    = var.index_prioridade
  origem              = var.origem
  porta_origem        = var.porta_origem
  destino_prefix      = var.destino_prefix
  protocolo           = var.protocolo
  regra_acesso        = var.regra_acesso
  direcao             = var.direcao
  tags                = module.tags_finops.tags
  
  providers = {
    azurerm.nsg  = azurerm.nsg
    azurerm.diti = azurerm.diti
  } 
  
}

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
