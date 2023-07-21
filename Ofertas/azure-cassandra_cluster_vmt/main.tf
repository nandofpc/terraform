module "Azu-Cassandra_Cluster_VM" {
  source = "git::https://PUSRBTRO:OTY2MDk4NDE0MjU0OhnkWwR6XfA+Hq9QjeEPQ4pwA%2fS0@bitbucket.bradesco.com.br:8443/scm/cpppv/cloud-portal-modulos-iac.git//Azu-Cassandra_Cluster_VMt?ref=Azu-Cassandra_Cluster_VMt_V3"

  resource_group_vms            = var.resource_group_vms
  resource_group_vnets          = var.resource_group_vnets
  resource_group_encryption_set = var.resource_group_encryption_set
  resource_group_gallery        = var.resource_group_gallery
  resource_group_shared_image   = var.resource_group_shared_image
  vnet_name                     = var.vnet_name
  subnet_name                   = var.subnet_name
  encryption_set_name           = var.encryption_set_name
  gallery_name                  = var.gallery_name
  shared_image_name             = var.shared_image_name
  vms_name                      = var.vms_name
  size                          = var.size
  storage_account_type          = var.storage_account_type
  tags                          = module.tags_finops.tags
  providers = {
    azurerm                   = azurerm
    azurerm.ditigerenciamento = azurerm.ditigerenciamento
  }

}


module "tags_finops" {
  source = "git::https://PUSRBTRO:OTY2MDk4NDE0MjU0OhnkWwR6XfA+Hq9QjeEPQ4pwA%2fS0@bitbucket.bradesco.com.br:8443/scm/cpppv/cloud-portal-modulos-iac.git//Azu-Tags_FinOps?ref=Azu-Tags_FinOps_V1"

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

