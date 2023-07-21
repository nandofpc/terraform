terraform {

  required_version = ">= 0.14.6"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.54.0"
    }
  }
}

data "azurerm_resource_group" "rg" {
  name = var.resource_group_vms
}

data "azurerm_resource_group" "rgvnets" {
  name = var.resource_group_vnets
}

data "azurerm_virtual_network" "vnetcass" {
  name                = var.vnet_name
  resource_group_name = data.azurerm_resource_group.rgvnets.name
}

data "azurerm_subnet" "subnetcass" {
  name                 = var.subnet_name
  virtual_network_name = data.azurerm_virtual_network.vnetcass.name
  resource_group_name  = data.azurerm_virtual_network.vnetcass.resource_group_name
}

data "azurerm_disk_encryption_set" "diskset" {
  name                = var.encryption_set_name
  resource_group_name = var.resource_group_encryption_set
}

data "azurerm_recovery_services_vault" "srv_vault" {
  name                = var.rec_vault_name
  resource_group_name = var.resource_group_vault
}

data "azurerm_backup_policy_vm" "bkpvm" {
  name                = var.bkp_name_vm
  recovery_vault_name = data.azurerm_recovery_services_vault.srv_vault.name
  resource_group_name = var.rg_bkp_policy
}


resource "azurerm_network_interface" "intf" {
  for_each            = toset(var.vms_name)
  name                = "${each.value}-nic"
  location            = data.azurerm_resource_group.rgvnets.location
  resource_group_name = data.azurerm_resource_group.rgvnets.name

  ip_configuration {
    name                          = "cassandra_internal_nics"
    subnet_id                     = data.azurerm_subnet.subnetcass.id
    private_ip_address_allocation = "Dynamic"
  }

  tags = var.tags

}


resource "azurerm_linux_virtual_machine" "vmcass" {
  # checkov:skip=CKV_AZURE_1: bypass
  # checkov:skip=CKV_AZURE_149: bypass
  for_each                        = toset(var.vms_name)
  name                            = each.value
  resource_group_name             = data.azurerm_resource_group.rg.name
  location                        = data.azurerm_resource_group.rg.location
  size                            = var.size
  disable_password_authentication = false
  admin_username                  = "cassandra"
  allow_extension_operations      = false
  network_interface_ids           = [azurerm_network_interface.intf[each.key].id]
  source_image_id                 = var.source_image_id
  admin_password                  = "b@nT@@03L!!$Ta09@@"
  # checkov:skip=CKV_SECRET_80: bypass
  encryption_at_host_enabled = true

  os_disk {
    name                   = "osdisk${each.value}"
    caching                = "ReadWrite"
    storage_account_type   = var.storage_account_type
    disk_encryption_set_id = data.azurerm_disk_encryption_set.diskset.id
  }


  tags = merge(var.tags, var.tags_bkp)
}


resource "azurerm_managed_disk" "mgd_disk" {
  for_each               = toset(var.vms_name)
  name                   = "disk${each.value}"
  location               = azurerm_linux_virtual_machine.vmcass[each.key].location
  resource_group_name    = azurerm_linux_virtual_machine.vmcass[each.key].resource_group_name
  storage_account_type   = var.storage_account_type
  disk_size_gb           = var.disk_size
  create_option          = "Empty"
  disk_encryption_set_id = data.azurerm_disk_encryption_set.diskset.id
  tags                   = var.tags
}

resource "azurerm_virtual_machine_data_disk_attachment" "diskattch" {
  for_each           = toset(var.vms_name)
  managed_disk_id    = azurerm_managed_disk.mgd_disk[each.key].id
  virtual_machine_id = azurerm_linux_virtual_machine.vmcass[each.key].id
  lun                = var.lun
  caching            = "ReadWrite"
}

resource "azurerm_backup_protected_vm" "bkpvaultvm" {
  for_each            = toset(var.vms_name)
  resource_group_name = azurerm_linux_virtual_machine.vmcass[each.key].resource_group_name
  recovery_vault_name = data.azurerm_recovery_services_vault.srv_vault.name
  source_vm_id        = azurerm_linux_virtual_machine.vmcass[each.key].id
  backup_policy_id    = data.azurerm_backup_policy_vm.bkpvm.id
}
