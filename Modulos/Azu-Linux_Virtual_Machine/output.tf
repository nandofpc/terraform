output "VM_SOURCES" {
  value = values({
    vm_name        = values(azurerm_linux_virtual_machine.vmcass)[*].name
    private_ip     = values(azurerm_linux_virtual_machine.vmcass)[*].private_ip_address
    resource_group = data.azurerm_resource_group.rg.name
    net_prefix     = data.azurerm_subnet.subnetcass.address_prefix
  })
}


output "ansible" {
  value = {
    operador  = var.oper_resp
    aplicacao = var.aplicacao
    ambiente  = var.ambiente
  }
}

