#-----------------------------------
# Data grupo de recurso
#-----------------------------------

data "azurerm_resource_group" "rg" {
  name = var.rg_name_vm
}

#-----------------------------------
# Data vnet
#-----------------------------------

data "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  resource_group_name = var.vnet_rg_name
}

#-----------------------------------
# Data subnet
#-----------------------------------

data "azurerm_subnet" "subnet" {
  name                 = var.subnet_name
  virtual_network_name = data.azurerm_virtual_network.vnet.name
  resource_group_name  = data.azurerm_virtual_network.vnet.resource_group_name
}

#-----------------------------------
# Data recovery service vault
#-----------------------------------

data "azurerm_recovery_services_vault" "srv_vault" {
  name                = var.rec_vault_name
  resource_group_name = var.resource_group_vault
}

#-------------------------------------
# Data policy recovery service vault
#-------------------------------------

data "azurerm_backup_policy_vm" "bkpvm" {
  name                = var.bkp_name_vm
  recovery_vault_name = data.azurerm_recovery_services_vault.srv_vault.name
  resource_group_name = data.azurerm_recovery_services_vault.srv_vault.resource_group_name
}

#-----------------------------------
# Data encryption set
#-----------------------------------

data "azurerm_disk_encryption_set" "diskset" {
  name                = var.encryption_set_name
  resource_group_name = var.resource_group_encryption_set
}


resource "random_string" "rnd" {
  count       = length(var.ambiente == "dv" ? var.zone : var.zone_pr)
  length      = var.digito
  min_numeric = var.digito
  special     = false
  lower       = true
}


#-----------------------------------
# Recurso interface
#-----------------------------------
resource "azurerm_network_interface" "intf" {
  #for_each            = toset(var.zone)
  count = length(var.ambiente == "dv" ? var.zone : var.zone_pr)
  # A variavel vms_name recebe os inputs da action 
  name                = "nic-${(var.ambiente == "dv" ? var.vms_name : var.vms_name)[count.index]}" #"${var.vms_name}${random_string.rnd[each.value].result}-nic"
  location            = data.azurerm_virtual_network.vnet.location
  resource_group_name = data.azurerm_virtual_network.vnet.resource_group_name

  ip_configuration {
    name                          = "internal_nics"
    subnet_id                     = data.azurerm_subnet.subnet.id
    private_ip_address_allocation = "Dynamic"
  }

  tags = var.tags

  lifecycle {
    create_before_destroy = true
  }
}

#-----------------------------------
# Recurso virtual machine
#-----------------------------------

resource "azurerm_linux_virtual_machine" "Vm" {
  # checkov:skip=CKV_AZURE_149: ADD REASON
  # checkov:skip=CKV_AZURE_1: ADD REASON
  #for_each                        = toset(var.zone)
  count                           = length(var.ambiente == "dv" ? var.zone : var.zone_pr)
  name                            = (var.ambiente == "dv" ? var.vms_name : var.vms_name)[count.index] #"${var.vms_name}${random_string.rnd[each.value].result}"
  resource_group_name             = data.azurerm_resource_group.rg.name
  location                        = data.azurerm_resource_group.rg.location
  size                            = var.size
  disable_password_authentication = var.disable_password_authentication
  admin_username                  = var.admin_username
  allow_extension_operations      = var.allow_extension_operations
  network_interface_ids           = [azurerm_network_interface.intf[count.index].id]
  source_image_id                 = var.source_image_id
  admin_password                  = var.admin_password
  zone                            = (var.ambiente == "dv" ? var.zone : var.zone_pr)[count.index] #"${each.value}"
  encryption_at_host_enabled      = var.encryption_at_host_enabled
  secure_boot_enabled             = var.is_secure_boot_enable ? true : null
  vtpm_enabled                    = var.vtpm_enable ? true : null


  os_disk {
    name                   = "osdisk-${(var.ambiente == "dv" ? var.vms_name : var.vms_name)[count.index]}" #"osdisk-${var.vms_name}${random_string.rnd[each.value].result}"
    caching                = "ReadWrite"
    storage_account_type   = var.storage_account_type
    disk_size_gb           = var.disk_size_gb
    disk_encryption_set_id = data.azurerm_disk_encryption_set.diskset.id
  }

  tags = var.tags
}

resource "azurerm_managed_disk" "mgd_disk" {
  #for_each = toset(var.zone)
  count                  = length(var.ambiente == "dv" ? var.zone : var.zone_pr)
  name                   = "${(var.ambiente == "dv" ? var.vms_name : var.vms_name)[count.index]}-diskmgd"
  resource_group_name    = data.azurerm_resource_group.rg.name
  location               = data.azurerm_resource_group.rg.location
  storage_account_type   = var.disk_storage_account_type
  disk_size_gb           = var.disk_size_gb_disk
  create_option          = "Empty"
  disk_encryption_set_id = data.azurerm_disk_encryption_set.diskset.id
  network_access_policy  = var.network_access_policy

  tags = var.tags
}

resource "azurerm_virtual_machine_data_disk_attachment" "diskattch" {
  #for_each = toset(var.zone)
  count              = length(var.ambiente == "dv" ? var.zone : var.zone_pr)
  managed_disk_id    = azurerm_managed_disk.mgd_disk[count.index].id
  virtual_machine_id = azurerm_linux_virtual_machine.Vm[count.index].id
  lun                = var.lun
  caching            = "ReadWrite"
}

resource "azurerm_backup_protected_vm" "bkpvaultvm" {
  #for_each = toset(var.zone)
  count               = length(var.ambiente == "dv" ? var.zone : var.zone_pr)
  resource_group_name = data.azurerm_backup_policy_vm.bkpvm.resource_group_name
  recovery_vault_name = data.azurerm_recovery_services_vault.srv_vault.name
  source_vm_id        = azurerm_linux_virtual_machine.Vm[count.index].id
  backup_policy_id    = data.azurerm_backup_policy_vm.bkpvm.id
}