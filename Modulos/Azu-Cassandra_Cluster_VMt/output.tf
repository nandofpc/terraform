output "DEPLOY_OUT" {
  value = values({
    #vm_name        = values(azurerm_linux_virtual_machine.Vm)[*].name
    vm_name         = azurerm_linux_virtual_machine.Vm.*.name
    #private_ip     = values(azurerm_linux_virtual_machine.Vm)[*].private_ip_address
    private_ip =  azurerm_linux_virtual_machine.Vm.*.private_ip_address
    resource_group = data.azurerm_resource_group.rg.name
    net_prefix     = data.azurerm_subnet.subnet.address_prefix
  })
}

