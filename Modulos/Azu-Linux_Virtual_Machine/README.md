## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.14.6 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | 3.54.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.54.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_backup_protected_vm.bkpvaultvm](https://registry.terraform.io/providers/hashicorp/azurerm/3.54.0/docs/resources/backup_protected_vm) | resource |
| [azurerm_linux_virtual_machine.vmcass](https://registry.terraform.io/providers/hashicorp/azurerm/3.54.0/docs/resources/linux_virtual_machine) | resource |
| [azurerm_managed_disk.mgd_disk](https://registry.terraform.io/providers/hashicorp/azurerm/3.54.0/docs/resources/managed_disk) | resource |
| [azurerm_network_interface.intf](https://registry.terraform.io/providers/hashicorp/azurerm/3.54.0/docs/resources/network_interface) | resource |
| [azurerm_virtual_machine_data_disk_attachment.diskattch](https://registry.terraform.io/providers/hashicorp/azurerm/3.54.0/docs/resources/virtual_machine_data_disk_attachment) | resource |
| [azurerm_backup_policy_vm.bkpvm](https://registry.terraform.io/providers/hashicorp/azurerm/3.54.0/docs/data-sources/backup_policy_vm) | data source |
| [azurerm_disk_encryption_set.diskset](https://registry.terraform.io/providers/hashicorp/azurerm/3.54.0/docs/data-sources/disk_encryption_set) | data source |
| [azurerm_recovery_services_vault.srv_vault](https://registry.terraform.io/providers/hashicorp/azurerm/3.54.0/docs/data-sources/recovery_services_vault) | data source |
| [azurerm_resource_group.rg](https://registry.terraform.io/providers/hashicorp/azurerm/3.54.0/docs/data-sources/resource_group) | data source |
| [azurerm_resource_group.rgvnets](https://registry.terraform.io/providers/hashicorp/azurerm/3.54.0/docs/data-sources/resource_group) | data source |
| [azurerm_subnet.subnetcass](https://registry.terraform.io/providers/hashicorp/azurerm/3.54.0/docs/data-sources/subnet) | data source |
| [azurerm_virtual_network.vnetcass](https://registry.terraform.io/providers/hashicorp/azurerm/3.54.0/docs/data-sources/virtual_network) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ambiente"></a> [ambiente](#input\_ambiente) | Para o Ansible. | `string` | n/a | yes |
| <a name="input_aplicacao"></a> [aplicacao](#input\_aplicacao) | Para o Ansible. | `string` | n/a | yes |
| <a name="input_bkp_name_vm"></a> [bkp\_name\_vm](#input\_bkp\_name\_vm) | Nome da politica de backup a ser associada. | `string` | n/a | yes |
| <a name="input_disk_size"></a> [disk\_size](#input\_disk\_size) | Tamanho do disco | `number` | n/a | yes |
| <a name="input_encryption_set_name"></a> [encryption\_set\_name](#input\_encryption\_set\_name) | Nome do Encryption Set | `string` | n/a | yes |
| <a name="input_lun"></a> [lun](#input\_lun) | O número da unidade lógica do disco de dados, que precisa ser exclusivo na máquina virtual. Alterar isso força a criação de um novo recurso | `number` | n/a | yes |
| <a name="input_oper_resp"></a> [oper\_resp](#input\_oper\_resp) | Para o Ansible. | `string` | n/a | yes |
| <a name="input_rec_vault_name"></a> [rec\_vault\_name](#input\_rec\_vault\_name) | Nome do Recovery Service Vault | `string` | n/a | yes |
| <a name="input_resource_group_encryption_set"></a> [resource\_group\_encryption\_set](#input\_resource\_group\_encryption\_set) | Resource Group da Disk Encryption Sets | `string` | n/a | yes |
| <a name="input_resource_group_vault"></a> [resource\_group\_vault](#input\_resource\_group\_vault) | Grupo de Recurso do Recovery Service Vault | `string` | n/a | yes |
| <a name="input_resource_group_vms"></a> [resource\_group\_vms](#input\_resource\_group\_vms) | Resource Group das VMs | `string` | n/a | yes |
| <a name="input_resource_group_vnets"></a> [resource\_group\_vnets](#input\_resource\_group\_vnets) | Resource Group da vNet | `string` | n/a | yes |
| <a name="input_rg_bkp_policy"></a> [rg\_bkp\_policy](#input\_rg\_bkp\_policy) | Nome do Grupo de Recurso a da politica de backup a ser associada. | `string` | n/a | yes |
| <a name="input_size"></a> [size](#input\_size) | Tipo de Size | `string` | n/a | yes |
| <a name="input_source_image_id"></a> [source\_image\_id](#input\_source\_image\_id) | URI da imagem. | `string` | n/a | yes |
| <a name="input_storage_account_type"></a> [storage\_account\_type](#input\_storage\_account\_type) | Tipo de Conta de Armazenamento. | `string` | n/a | yes |
| <a name="input_subnet_name"></a> [subnet\_name](#input\_subnet\_name) | Nome da Subnet | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Recebe os valores de FinOps. | `map(any)` | n/a | yes |
| <a name="input_tags_bkp"></a> [tags\_bkp](#input\_tags\_bkp) | Recebe os valores de bkp. | `map(any)` | n/a | yes |
| <a name="input_vms_name"></a> [vms\_name](#input\_vms\_name) | Nome das Maquinas Virtuais que irão compor o cluster | `list(string)` | n/a | yes |
| <a name="input_vnet_name"></a> [vnet\_name](#input\_vnet\_name) | Nome da vNet | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_VM_SOURCES"></a> [VM\_SOURCES](#output\_VM\_SOURCES) | n/a |
| <a name="output_ansible"></a> [ansible](#output\_ansible) | n/a |
