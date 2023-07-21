module "subnet" {
  source = "git::https://PUSRBTRO:OTY2MDk4NDE0MjU0OhnkWwR6XfA+Hq9QjeEPQ4pwA%2fS0@bitbucket.bradesco.com.br:8443/scm/cpppv/cloud-portal-modulos-iac.git//Azu-Subnet_Delegation/?ref=Azu-Subnet_Delegation_V7"

  rg_name      = var.rg_name
  rg_name_vnet = var.rg_name_vnet
  rg_name_nsg  = var.rg_name_nsg

  subnets   = var.subnets
  vnet_name = var.vnet_name

  rt_name  = var.rt_name
  ambiente = var.ambiente
  nsg_name = var.nsg_name

  enable_service_endpoints  = var.enable_service_endpoints
  enable_service_delegation = var.enable_service_delegation


  service_endpoints = var.service_endpoints

  delegation_name = var.delegation_name

  pe-net_policy = var.pe-net_policy
  pl-net_policy = var.pl-net_policy
}
