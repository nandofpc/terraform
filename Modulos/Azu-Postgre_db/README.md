## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=0.14.9 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | 3.46.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.46.0 |
| <a name="provider_azurerm.ditigerenciamento"></a> [azurerm.ditigerenciamento](#provider\_azurerm.ditigerenciamento) | 3.46.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_postgresql_configuration.postgre_config1](https://registry.terraform.io/providers/hashicorp/azurerm/3.46.0/docs/resources/postgresql_configuration) | resource |
| [azurerm_postgresql_configuration.postgre_config2](https://registry.terraform.io/providers/hashicorp/azurerm/3.46.0/docs/resources/postgresql_configuration) | resource |
| [azurerm_postgresql_configuration.postgre_config3](https://registry.terraform.io/providers/hashicorp/azurerm/3.46.0/docs/resources/postgresql_configuration) | resource |
| [azurerm_postgresql_database.postgre_database](https://registry.terraform.io/providers/hashicorp/azurerm/3.46.0/docs/resources/postgresql_database) | resource |
| [azurerm_postgresql_server.postgre](https://registry.terraform.io/providers/hashicorp/azurerm/3.46.0/docs/resources/postgresql_server) | resource |
| [azurerm_postgresql_virtual_network_rule.postgre_rules_jump](https://registry.terraform.io/providers/hashicorp/azurerm/3.46.0/docs/resources/postgresql_virtual_network_rule) | resource |
| [azurerm_postgresql_virtual_network_rule.postgre_rules_pe](https://registry.terraform.io/providers/hashicorp/azurerm/3.46.0/docs/resources/postgresql_virtual_network_rule) | resource |
| [azurerm_private_endpoint.postgre_pe](https://registry.terraform.io/providers/hashicorp/azurerm/3.46.0/docs/resources/private_endpoint) | resource |
| [azurerm_key_vault.key_vault](https://registry.terraform.io/providers/hashicorp/azurerm/3.46.0/docs/data-sources/key_vault) | data source |
| [azurerm_key_vault_secret.secret_password](https://registry.terraform.io/providers/hashicorp/azurerm/3.46.0/docs/data-sources/key_vault_secret) | data source |
| [azurerm_key_vault_secret.secret_user](https://registry.terraform.io/providers/hashicorp/azurerm/3.46.0/docs/data-sources/key_vault_secret) | data source |
| [azurerm_private_dns_zone.dns_zone](https://registry.terraform.io/providers/hashicorp/azurerm/3.46.0/docs/data-sources/private_dns_zone) | data source |
| [azurerm_subnet.jump_subnet](https://registry.terraform.io/providers/hashicorp/azurerm/3.46.0/docs/data-sources/subnet) | data source |
| [azurerm_subnet.subnet](https://registry.terraform.io/providers/hashicorp/azurerm/3.46.0/docs/data-sources/subnet) | data source |
| [azurerm_virtual_network.gerenciamento_vnet](https://registry.terraform.io/providers/hashicorp/azurerm/3.46.0/docs/data-sources/virtual_network) | data source |
| [azurerm_virtual_network.vnet](https://registry.terraform.io/providers/hashicorp/azurerm/3.46.0/docs/data-sources/virtual_network) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_auto_grow"></a> [auto\_grow](#input\_auto\_grow) | (Opcional) Ative/desative o crescimento automático do armazenamento | `bool` | n/a | yes |
| <a name="input_charset_postdb"></a> [charset\_postdb](#input\_charset\_postdb) | Conjunto de caracteres para o Database do PostgreSQL | `string` | n/a | yes |
| <a name="input_collation_postdb"></a> [collation\_postdb](#input\_collation\_postdb) | Informe uma collection válida para a Database | `string` | n/a | yes |
| <a name="input_dns_zone_name"></a> [dns\_zone\_name](#input\_dns\_zone\_name) | Insira o nome da zone DNS privada que o recurso irá utillizar | `string` | n/a | yes |
| <a name="input_geo_redundant_backup"></a> [geo\_redundant\_backup](#input\_geo\_redundant\_backup) | (Opcional) Ative/desative os backups de servidor com redundância geográfica | `bool` | n/a | yes |
| <a name="input_gerenciamento_vnet_name"></a> [gerenciamento\_vnet\_name](#input\_gerenciamento\_vnet\_name) | Insira o Nome da VNET de Gerenciamento (Onde se encontra o Jump) | `string` | n/a | yes |
| <a name="input_gerenciamento_vnet_rg_name"></a> [gerenciamento\_vnet\_rg\_name](#input\_gerenciamento\_vnet\_rg\_name) | Insira o Nome do Grupo de Recurso da VNET de Gerenciamento | `string` | n/a | yes |
| <a name="input_ignore_endpoint_postrule"></a> [ignore\_endpoint\_postrule](#input\_ignore\_endpoint\_postrule) | (Opcional) As regras do postgre devem ser criadas depois que a subnet já tenha sido configurado com um endpoint | `bool` | n/a | yes |
| <a name="input_infrastructure_encryption"></a> [infrastructure\_encryption](#input\_infrastructure\_encryption) | (Opcional) Se a infraestrutura é criptografada ou não para este servidor. O padrão é falso. Alterar isso força um novo recurso a ser criado | `bool` | n/a | yes |
| <a name="input_is_manual_connection"></a> [is\_manual\_connection](#input\_is\_manual\_connection) | Requer aprovação manual do Recurso remoto | `bool` | n/a | yes |
| <a name="input_jump_subnet_name"></a> [jump\_subnet\_name](#input\_jump\_subnet\_name) | Insira o Nome da Subnet de Gerenciamento (Onde se encontra o Jump) | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | n/a | `string` | n/a | yes |
| <a name="input_minimal_tls"></a> [minimal\_tls](#input\_minimal\_tls) | n/a | `string` | n/a | yes |
| <a name="input_name_key_vault"></a> [name\_key\_vault](#input\_name\_key\_vault) | n/a | `string` | n/a | yes |
| <a name="input_name_postdb"></a> [name\_postdb](#input\_name\_postdb) | Nome do Database do PostgreSQL | `string` | n/a | yes |
| <a name="input_name_secret_password"></a> [name\_secret\_password](#input\_name\_secret\_password) | n/a | `string` | n/a | yes |
| <a name="input_name_secret_user"></a> [name\_secret\_user](#input\_name\_secret\_user) | n/a | `string` | n/a | yes |
| <a name="input_pg_version"></a> [pg\_version](#input\_pg\_version) | Versão do postgres | `string` | n/a | yes |
| <a name="input_postname"></a> [postname](#input\_postname) | n/a | `string` | n/a | yes |
| <a name="input_private_endpoint_name"></a> [private\_endpoint\_name](#input\_private\_endpoint\_name) | Nome do Private Endpoint | `string` | n/a | yes |
| <a name="input_psc_name"></a> [psc\_name](#input\_psc\_name) | Insira um nome para a conexão privada | `string` | n/a | yes |
| <a name="input_public_network"></a> [public\_network](#input\_public\_network) | (Opcional) Se o acesso à rede pública é permitido ou não para este servidor. O padrão é verdadeiro. | `bool` | n/a | yes |
| <a name="input_retention"></a> [retention](#input\_retention) | Tempo de retenção do backup | `string` | n/a | yes |
| <a name="input_rg_name"></a> [rg\_name](#input\_rg\_name) | Resource Group Existente | `string` | n/a | yes |
| <a name="input_rg_name_dns_zone"></a> [rg\_name\_dns\_zone](#input\_rg\_name\_dns\_zone) | Nome do Grupo de Recurso Existente da Zona de DNS | `string` | n/a | yes |
| <a name="input_rg_name_key_vault"></a> [rg\_name\_key\_vault](#input\_rg\_name\_key\_vault) | n/a | `string` | n/a | yes |
| <a name="input_rg_name_pe"></a> [rg\_name\_pe](#input\_rg\_name\_pe) | Nome do Grupo de Recurso Existente do Private Endpoint | `string` | n/a | yes |
| <a name="input_rg_name_vnet"></a> [rg\_name\_vnet](#input\_rg\_name\_vnet) | Nome do Grupo de Recurso Existente da VNet e Subnet | `string` | n/a | yes |
| <a name="input_sku"></a> [sku](#input\_sku) | tier + family + cores = B\_Gen4\_1 | `string` | n/a | yes |
| <a name="input_ssl_enforcement"></a> [ssl\_enforcement](#input\_ssl\_enforcement) | (Obrigatório) Especifica se o SSL deve ser aplicado nas conexões. Os valores possíveis são true e false. | `bool` | n/a | yes |
| <a name="input_storagesize"></a> [storagesize](#input\_storagesize) | Tamanho do armazenamento em MB | `string` | n/a | yes |
| <a name="input_subnet_name"></a> [subnet\_name](#input\_subnet\_name) | Insira o nome da subnet onde o recurso será criado | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | n/a | `map(any)` | n/a | yes |
| <a name="input_tagsbkp"></a> [tagsbkp](#input\_tagsbkp) | n/a | `map(any)` | n/a | yes |
| <a name="input_vnet_name"></a> [vnet\_name](#input\_vnet\_name) | Insira o nome da vnet onde o recurso será criado | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_postgre_out"></a> [postgre\_out](#output\_postgre\_out) | n/a |
