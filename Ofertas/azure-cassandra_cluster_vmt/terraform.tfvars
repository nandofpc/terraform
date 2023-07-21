resource_group_vms            = "rg-ho-testevra"
resource_group_vnets          = "rg-ho-testevra"
resource_group_encryption_set = "rgsharedinfrastructuresandbox"
resource_group_gallery        = "rgbrimagegallery"
resource_group_shared_image   = "rgbrimagegallery"
vnet_name                     = "vnet"
subnet_name                   = "subnet"
encryption_set_name           = "dshosharedinfrastructuresandbox001"
gallery_name                  = "computegalleryazbra"
shared_image_name             = "TMPL-RHEL8.5"
size                          = "Standard_B4ms"
storage_account_type          = "Standard_LRS"




vms_name = ["dbcass001","dbcass002"]

tags = {
  centro_custo  = "centrocusto"
  empresa       = "bradesco"
  departamento  = "departamento"
  app           = "app"
  ambiente      = "dev"
  bo            = "bo"
  to            = "to"
  componente    = "clustercassandravms_brso"
  gerenciamento = "vra"
}
