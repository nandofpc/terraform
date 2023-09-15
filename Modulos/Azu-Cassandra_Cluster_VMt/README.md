#teste
Requirements
Name	Version
terraform	>= 0.14.6
azurerm	2.40.0
Providers
Name	Version
azurerm	2.40.0
Modules
No modules.

Resources
Name	Type
azurerm_linux_virtual_machine.vmcass	resource
azurerm_network_interface.intf	resource
azurerm_disk_encryption_set.diskset	data source
azurerm_resource_group.rg	data source
azurerm_resource_group.rgvnets	data source
azurerm_subnet.subnetcass	data source
azurerm_virtual_network.vnetcass	data source
Inputs
Name	Description	Type	Default	Required
encryption_set_name	Nome do Encryption Set	string	n/a	yes
resource_group_encryption_set	Resource Group da Disk Encryption Sets	string	n/a	yes
resource_group_vms	Resource Group das VMs	string	n/a	yes
resource_group_vnets	Resource Group da vNet	string	n/a	yes
size	Tipo de Size	string	n/a	yes
storage_account_type	Tipo de Conta de Armazenamento.	string	n/a	yes
subnet_name	Nome da Subnet	string	n/a	yes
tags	Recebe os valores de FinOps.	map(any)	n/a	yes
vms_name	Nome das Maquinas Virtuais que irão compor o cluster	list(string)	n/a	yes
vnet_name	Nome da vNet	string	n/a	yes
Outputs
Name	Description
DEPLOY_OUT	n/a
