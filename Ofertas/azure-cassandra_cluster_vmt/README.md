## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.14.9 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | 3.54.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_Azu-Cassandra_Cluster_VM"></a> [Azu-Cassandra\_Cluster\_VM](#module\_Azu-Cassandra\_Cluster\_VM) | git::https://PUSRBTRO:OTY2MDk4NDE0MjU0OhnkWwR6XfA+Hq9QjeEPQ4pwA%2fS0@bitbucket.bradesco.com.br:8443/scm/cpppv/cloud-portal-modulos-iac.git//Azu-Cassandra_Cluster_VM | Azu-Cassandra_Cluster_VM_V6 |
| <a name="module_tags_finops"></a> [tags\_finops](#module\_tags\_finops) | git::https://PUSRBTRO:OTY2MDk4NDE0MjU0OhnkWwR6XfA+Hq9QjeEPQ4pwA%2fS0@bitbucket.bradesco.com.br:8443/scm/cpppv/cloud-portal-modulos-iac.git//Azu-Tags_FinOps | Azu-Tags_FinOps_V1 |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ambiente"></a> [ambiente](#input\_ambiente) | Selecione o ambiente para o deploy do recurso. | `string` | `""` | no |
| <a name="input_app"></a> [app](#input\_app) | Digite o nome da aplicação. O campo permite somente letras minúsculas separado por underscore. Quantidade máxima de 63 caracteres. | `string` | `""` | no |
| <a name="input_bo"></a> [bo](#input\_bo) | Selecione o responsável de negócio. | `string` | `""` | no |
| <a name="input_centro_custo"></a> [centro\_custo](#input\_centro\_custo) | Selecione o centro de custo. | `string` | `""` | no |
| <a name="input_client_id"></a> [client\_id](#input\_client\_id) | Client id do ditigerenciamento | `string` | n/a | yes |
| <a name="input_client_id2"></a> [client\_id2](#input\_client\_id2) | Client id do ditigerenciamento | `string` | n/a | yes |
| <a name="input_client_secret"></a> [client\_secret](#input\_client\_secret) | Client secret do ditigerenciamento | `string` | n/a | yes |
| <a name="input_client_secret2"></a> [client\_secret2](#input\_client\_secret2) | Client secret do ditigerenciamento | `string` | n/a | yes |
| <a name="input_componente"></a> [componente](#input\_componente) | n/a | `string` | `"cassandracluster_brso"` | no |
| <a name="input_departamento"></a> [departamento](#input\_departamento) | Escolha o departamento responsável. | `string` | `""` | no |
| <a name="input_empresa"></a> [empresa](#input\_empresa) | Selecione a empresa. Origem das informações: Sistemas UORG. Ex.: 'banco\_bradesco\_financiamentos\_sa'. | `string` | `""` | no |
| <a name="input_encryption_set_name"></a> [encryption\_set\_name](#input\_encryption\_set\_name) | Nome do Encryption Set | `string` | n/a | yes |
| <a name="input_gallery_name"></a> [gallery\_name](#input\_gallery\_name) | Nome da Galeria | `string` | n/a | yes |
| <a name="input_gerenciamento"></a> [gerenciamento](#input\_gerenciamento) | n/a | `string` | `"vra"` | no |
| <a name="input_resource_group_encryption_set"></a> [resource\_group\_encryption\_set](#input\_resource\_group\_encryption\_set) | Resource Group da Disk Encryption Sets | `string` | n/a | yes |
| <a name="input_resource_group_gallery"></a> [resource\_group\_gallery](#input\_resource\_group\_gallery) | Resource Group da Galeria | `string` | n/a | yes |
| <a name="input_resource_group_shared_image"></a> [resource\_group\_shared\_image](#input\_resource\_group\_shared\_image) | Resource Group da Imagem | `string` | n/a | yes |
| <a name="input_resource_group_vms"></a> [resource\_group\_vms](#input\_resource\_group\_vms) | Resource Group das VMs | `string` | n/a | yes |
| <a name="input_resource_group_vnets"></a> [resource\_group\_vnets](#input\_resource\_group\_vnets) | Resource Group da vNet | `string` | n/a | yes |
| <a name="input_shared_image_name"></a> [shared\_image\_name](#input\_shared\_image\_name) | Nome da Imagem a ser usada | `string` | n/a | yes |
| <a name="input_size"></a> [size](#input\_size) | Tipo de Size | `string` | n/a | yes |
| <a name="input_storage_account_type"></a> [storage\_account\_type](#input\_storage\_account\_type) | Tipo de Conta de Armazenamento. | `string` | n/a | yes |
| <a name="input_subnet_name"></a> [subnet\_name](#input\_subnet\_name) | Nome da Subnet | `string` | n/a | yes |
| <a name="input_subscription_id"></a> [subscription\_id](#input\_subscription\_id) | subscription id de ditigerenciamento | `string` | n/a | yes |
| <a name="input_subscription_id2"></a> [subscription\_id2](#input\_subscription\_id2) | subscription id de ditigerenciamento | `string` | n/a | yes |
| <a name="input_tenant_id"></a> [tenant\_id](#input\_tenant\_id) | Tenant id do ditigerenciamento | `string` | n/a | yes |
| <a name="input_tenant_id2"></a> [tenant\_id2](#input\_tenant\_id2) | Tenant id do ditigerenciamento | `string` | n/a | yes |
| <a name="input_to"></a> [to](#input\_to) | Selecione o técnico responsável. | `string` | `""` | no |
| <a name="input_vms_name"></a> [vms\_name](#input\_vms\_name) | Nome das Maquinas Virtuais que irão compor o cluster | `list(string)` | n/a | yes |
| <a name="input_vnet_name"></a> [vnet\_name](#input\_vnet\_name) | Nome da vNet | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_Net_Prefix"></a> [Net\_Prefix](#output\_Net\_Prefix) | Retorna Prefixo de rede da subnet onde estão as VM's |
| <a name="output_Passwords"></a> [Passwords](#output\_Passwords) | Retorna os password das maquinas |
| <a name="output_Private_IPS"></a> [Private\_IPS](#output\_Private\_IPS) | Retorna os IPS internos das maquinas |
| <a name="output_Resource_Group"></a> [Resource\_Group](#output\_Resource\_Group) | Retorna Resource Group das Maquinas Virtuais. |
| <a name="output_Virtual_Machine_Names"></a> [Virtual\_Machine\_Names](#output\_Virtual\_Machine\_Names) | Retorna nome das VM's |
