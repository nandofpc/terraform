## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.14.9 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | 3.48.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_databricksw"></a> [databricksw](#module\_databricksw) | git::https://PUSRBTRO:OTY2MDk4NDE0MjU0OhnkWwR6XfA+Hq9QjeEPQ4pwA%2fS0@bitbucket.bradesco.com.br:8443/scm/cpppv/cloud-portal-modulos-iac.git//Azu-DataBricks | Azu-DataBricks_V45 |
| <a name="module_tags_finops"></a> [tags\_finops](#module\_tags\_finops) | git::https://PUSRBTRO:OTY2MDk4NDE0MjU0OhnkWwR6XfA+Hq9QjeEPQ4pwA%2fS0@bitbucket.bradesco.com.br:8443/scm/cpppv/cloud-portal-modulos-iac.git//Azu-Tags_FinOps | Azu-Tags_FinOps_V1 |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ambiente"></a> [ambiente](#input\_ambiente) | n/a | `string` | n/a | yes |
| <a name="input_app"></a> [app](#input\_app) | n/a | `string` | n/a | yes |
| <a name="input_bo"></a> [bo](#input\_bo) | n/a | `string` | n/a | yes |
| <a name="input_centro_custo"></a> [centro\_custo](#input\_centro\_custo) | n/a | `string` | n/a | yes |
| <a name="input_client_id"></a> [client\_id](#input\_client\_id) | n/a | `string` | n/a | yes |
| <a name="input_client_secret"></a> [client\_secret](#input\_client\_secret) | n/a | `string` | n/a | yes |
| <a name="input_componente"></a> [componente](#input\_componente) | n/a | `string` | n/a | yes |
| <a name="input_databricks_name"></a> [databricks\_name](#input\_databricks\_name) | n/a | `string` | n/a | yes |
| <a name="input_databricks_psc"></a> [databricks\_psc](#input\_databricks\_psc) | n/a | `string` | n/a | yes |
| <a name="input_databricks_st_name"></a> [databricks\_st\_name](#input\_databricks\_st\_name) | Define o nome do storage account que será criado pelo databricks. | `string` | n/a | yes |
| <a name="input_departamento"></a> [departamento](#input\_departamento) | n/a | `string` | n/a | yes |
| <a name="input_dns_record"></a> [dns\_record](#input\_dns\_record) | n/a | `string` | n/a | yes |
| <a name="input_dns_zone_name"></a> [dns\_zone\_name](#input\_dns\_zone\_name) | Digite a zona dns. | `string` | n/a | yes |
| <a name="input_empresa"></a> [empresa](#input\_empresa) | n/a | `string` | n/a | yes |
| <a name="input_gerenciamento"></a> [gerenciamento](#input\_gerenciamento) | n/a | `string` | n/a | yes |
| <a name="input_ip_addresses"></a> [ip\_addresses](#input\_ip\_addresses) | n/a | `list(string)` | n/a | yes |
| <a name="input_label"></a> [label](#input\_label) | n/a | `string` | `"allow_in"` | no |
| <a name="input_list_type"></a> [list\_type](#input\_list\_type) | n/a | `string` | `"ALLOW"` | no |
| <a name="input_location"></a> [location](#input\_location) | n/a | `string` | n/a | yes |
| <a name="input_private_endpoint_name"></a> [private\_endpoint\_name](#input\_private\_endpoint\_name) | n/a | `string` | n/a | yes |
| <a name="input_pubaccess"></a> [pubaccess](#input\_pubaccess) | n/a | `string` | n/a | yes |
| <a name="input_rg_dns"></a> [rg\_dns](#input\_rg\_dns) | Escolha o grupo de recurso do dns. | `string` | n/a | yes |
| <a name="input_rg_name"></a> [rg\_name](#input\_rg\_name) | n/a | `string` | n/a | yes |
| <a name="input_rg_nsg"></a> [rg\_nsg](#input\_rg\_nsg) | n/a | `string` | n/a | yes |
| <a name="input_rg_pe"></a> [rg\_pe](#input\_rg\_pe) | n/a | `string` | n/a | yes |
| <a name="input_rg_vnet"></a> [rg\_vnet](#input\_rg\_vnet) | n/a | `string` | n/a | yes |
| <a name="input_sku"></a> [sku](#input\_sku) | n/a | `string` | `"premium"` | no |
| <a name="input_st_name_enable"></a> [st\_name\_enable](#input\_st\_name\_enable) | n/a | `bool` | `false` | no |
| <a name="input_subnet_endpoint_name"></a> [subnet\_endpoint\_name](#input\_subnet\_endpoint\_name) | Digite o nome da subnet privada. | `string` | n/a | yes |
| <a name="input_subnet_private_ip"></a> [subnet\_private\_ip](#input\_subnet\_private\_ip) | n/a | `list(string)` | n/a | yes |
| <a name="input_subnet_private_name"></a> [subnet\_private\_name](#input\_subnet\_private\_name) | n/a | `string` | n/a | yes |
| <a name="input_subnet_public_ip"></a> [subnet\_public\_ip](#input\_subnet\_public\_ip) | n/a | `list(string)` | n/a | yes |
| <a name="input_subnet_public_name"></a> [subnet\_public\_name](#input\_subnet\_public\_name) | n/a | `string` | n/a | yes |
| <a name="input_subscription_id"></a> [subscription\_id](#input\_subscription\_id) | n/a | `string` | n/a | yes |
| <a name="input_tenant_id"></a> [tenant\_id](#input\_tenant\_id) | n/a | `string` | n/a | yes |
| <a name="input_to"></a> [to](#input\_to) | n/a | `string` | n/a | yes |
| <a name="input_vnet_name"></a> [vnet\_name](#input\_vnet\_name) | n/a | `string` | n/a | yes |

## Outputs

No outputs.
