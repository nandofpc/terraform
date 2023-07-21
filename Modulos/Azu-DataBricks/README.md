## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.14.9 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | 3.48.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.48.0 |
| <a name="provider_azurerm.ditiidentity"></a> [azurerm.ditiidentity](#provider\_azurerm.ditiidentity) | 3.48.0 |
| <a name="provider_databricks"></a> [databricks](#provider\_databricks) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_databricks_workspace.databricksw](https://registry.terraform.io/providers/hashicorp/azurerm/3.48.0/docs/resources/databricks_workspace) | resource |
| [azurerm_network_security_group.nsg](https://registry.terraform.io/providers/hashicorp/azurerm/3.48.0/docs/resources/network_security_group) | resource |
| [azurerm_private_dns_cname_record.name](https://registry.terraform.io/providers/hashicorp/azurerm/3.48.0/docs/resources/private_dns_cname_record) | resource |
| [azurerm_private_endpoint.databricks](https://registry.terraform.io/providers/hashicorp/azurerm/3.48.0/docs/resources/private_endpoint) | resource |
| [azurerm_subnet.private](https://registry.terraform.io/providers/hashicorp/azurerm/3.48.0/docs/resources/subnet) | resource |
| [azurerm_subnet.public](https://registry.terraform.io/providers/hashicorp/azurerm/3.48.0/docs/resources/subnet) | resource |
| [azurerm_subnet_network_security_group_association.private](https://registry.terraform.io/providers/hashicorp/azurerm/3.48.0/docs/resources/subnet_network_security_group_association) | resource |
| [azurerm_subnet_network_security_group_association.public](https://registry.terraform.io/providers/hashicorp/azurerm/3.48.0/docs/resources/subnet_network_security_group_association) | resource |
| [databricks_ip_access_list.allowed-list](https://registry.terraform.io/providers/databricks/databricks/latest/docs/resources/ip_access_list) | resource |
| [databricks_workspace_conf.this](https://registry.terraform.io/providers/databricks/databricks/latest/docs/resources/workspace_conf) | resource |
| [azurerm_private_dns_zone.dns_zone](https://registry.terraform.io/providers/hashicorp/azurerm/3.48.0/docs/data-sources/private_dns_zone) | data source |
| [azurerm_subnet.endpoint](https://registry.terraform.io/providers/hashicorp/azurerm/3.48.0/docs/data-sources/subnet) | data source |
| [azurerm_virtual_network.vnet](https://registry.terraform.io/providers/hashicorp/azurerm/3.48.0/docs/data-sources/virtual_network) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_databricks_name"></a> [databricks\_name](#input\_databricks\_name) | Digite o nome do databriks workspace. | `string` | n/a | yes |
| <a name="input_databricks_psc"></a> [databricks\_psc](#input\_databricks\_psc) | Digite o nome da conexão do private endpoint | `string` | n/a | yes |
| <a name="input_databricks_st_name"></a> [databricks\_st\_name](#input\_databricks\_st\_name) | Define o nome do storage account que será criado pelo databricks. | `string` | n/a | yes |
| <a name="input_dns_record"></a> [dns\_record](#input\_dns\_record) | n/a | `string` | n/a | yes |
| <a name="input_dns_zone_name"></a> [dns\_zone\_name](#input\_dns\_zone\_name) | Nome da zona de dns. | `string` | n/a | yes |
| <a name="input_ip_addresses"></a> [ip\_addresses](#input\_ip\_addresses) | n/a | `list(string)` | n/a | yes |
| <a name="input_label"></a> [label](#input\_label) | n/a | `string` | `"allow_in"` | no |
| <a name="input_list_type"></a> [list\_type](#input\_list\_type) | n/a | `string` | `"ALLOW"` | no |
| <a name="input_location"></a> [location](#input\_location) | Selecione a localização. | `string` | n/a | yes |
| <a name="input_private_endpoint_name"></a> [private\_endpoint\_name](#input\_private\_endpoint\_name) | Digite o nome do private endpoint. | `string` | n/a | yes |
| <a name="input_pubaccess"></a> [pubaccess](#input\_pubaccess) | Permitir acesso publico | `string` | n/a | yes |
| <a name="input_rg_dns"></a> [rg\_dns](#input\_rg\_dns) | n/a | `string` | n/a | yes |
| <a name="input_rg_name"></a> [rg\_name](#input\_rg\_name) | Selecione o grupo do recurso do databriks. | `string` | n/a | yes |
| <a name="input_rg_nsg"></a> [rg\_nsg](#input\_rg\_nsg) | n/a | `string` | n/a | yes |
| <a name="input_rg_pe"></a> [rg\_pe](#input\_rg\_pe) | n/a | `string` | n/a | yes |
| <a name="input_rg_vnet"></a> [rg\_vnet](#input\_rg\_vnet) | n/a | `string` | n/a | yes |
| <a name="input_sku"></a> [sku](#input\_sku) | Selecione o sku para o databricks. | `string` | n/a | yes |
| <a name="input_st_name_enable"></a> [st\_name\_enable](#input\_st\_name\_enable) | n/a | `bool` | `false` | no |
| <a name="input_subnet_endpoint_name"></a> [subnet\_endpoint\_name](#input\_subnet\_endpoint\_name) | Digite o nome da subnet privada. | `string` | n/a | yes |
| <a name="input_subnet_private_ip"></a> [subnet\_private\_ip](#input\_subnet\_private\_ip) | Digite a subnet privada. | `list(string)` | n/a | yes |
| <a name="input_subnet_private_name"></a> [subnet\_private\_name](#input\_subnet\_private\_name) | Digite o nome da subnet privada. | `string` | n/a | yes |
| <a name="input_subnet_public_ip"></a> [subnet\_public\_ip](#input\_subnet\_public\_ip) | Digite a subnet pública. | `list(string)` | n/a | yes |
| <a name="input_subnet_public_name"></a> [subnet\_public\_name](#input\_subnet\_public\_name) | Digite o nome da subnet pública. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Recebe os valores de FinOps. | `map(any)` | n/a | yes |
| <a name="input_vnet_name"></a> [vnet\_name](#input\_vnet\_name) | Selecione o nome da vnet. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_workspace_url"></a> [workspace\_url](#output\_workspace\_url) | n/a |
