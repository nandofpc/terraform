## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.14.9 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | 3.46.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_DataRG"></a> [DataRG](#module\_DataRG) | git::https://pusrbtro:OTY2MDk4NDE0MjU0OhnkWwR6XfA+Hq9QjeEPQ4pwA%2fS0@bitbucket.bradesco.com.br:8443/scm/cpppv/cloud-portal-modulos-iac.git//Azu-DataRG | Azu-DataRG_V2 |
| <a name="module_Tags_BackupPass"></a> [Tags\_BackupPass](#module\_Tags\_BackupPass) | git::https://pusrbtro:OTY2MDk4NDE0MjU0OhnkWwR6XfA+Hq9QjeEPQ4pwA%2fS0@bitbucket.bradesco.com.br:8443/scm/cpppv/cloud-portal-modulos-iac.git//Azu-Tags_BackupPass | Azu-Tags_BackupPass_V1 |
| <a name="module_Tags_FinOps"></a> [Tags\_FinOps](#module\_Tags\_FinOps) | git::https://pusrbtro:OTY2MDk4NDE0MjU0OhnkWwR6XfA+Hq9QjeEPQ4pwA%2fS0@bitbucket.bradesco.com.br:8443/scm/cpppv/cloud-portal-modulos-iac.git//Azu-Tags_FinOps | Azu-Tags_FinOps_V1 |
| <a name="module_postgre"></a> [postgre](#module\_postgre) | git::https://pusrbtro:OTY2MDk4NDE0MjU0OhnkWwR6XfA+Hq9QjeEPQ4pwA%2fS0@bitbucket.bradesco.com.br:8443/scm/cpppv/cloud-portal-modulos-iac.git//Azu-Postgre_db | Azu-Postgre_db_V6 |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ambiente"></a> [ambiente](#input\_ambiente) | Ambiente de implantação da aplicação, serviço ou carga de trabalho | `string` | n/a | yes |
| <a name="input_app"></a> [app](#input\_app) | Nome da aplicação que o recursos esta relacionado | `string` | n/a | yes |
| <a name="input_auto_grow"></a> [auto\_grow](#input\_auto\_grow) | (Opcional) Ative/desative o crescimento automático do armazenamento | `bool` | n/a | yes |
| <a name="input_bkp-ambiente"></a> [bkp-ambiente](#input\_bkp-ambiente) | Ambiente do Backup (PROD/NPROD) | `string` | n/a | yes |
| <a name="input_bkp-criticidade"></a> [bkp-criticidade](#input\_bkp-criticidade) | Criticidade do Backup e dados (SIM/NAO) | `string` | n/a | yes |
| <a name="input_bkp-retencao"></a> [bkp-retencao](#input\_bkp-retencao) | Tempo de retenção de Backup | `string` | n/a | yes |
| <a name="input_bkp-segmento"></a> [bkp-segmento](#input\_bkp-segmento) | Segmento do ambiente | `string` | n/a | yes |
| <a name="input_bo"></a> [bo](#input\_bo) | Nome da area de negocio responsavel pelo recurso. Poderá ter multiplos BOs. Nome extraidos da rotina PICS. | `string` | n/a | yes |
| <a name="input_centro_custo"></a> [centro\_custo](#input\_centro\_custo) | O centro de custo de contabilidade associado a este recurso Codigo de junção, informações do sistema CARO | `string` | n/a | yes |
| <a name="input_charset_postdb"></a> [charset\_postdb](#input\_charset\_postdb) | Conjunto de caracteres para o Database do PostgreSQL | `string` | n/a | yes |
| <a name="input_client_id"></a> [client\_id](#input\_client\_id) | n/a | `string` | n/a | yes |
| <a name="input_client_id2"></a> [client\_id2](#input\_client\_id2) | n/a | `string` | n/a | yes |
| <a name="input_client_secret"></a> [client\_secret](#input\_client\_secret) | n/a | `string` | n/a | yes |
| <a name="input_client_secret2"></a> [client\_secret2](#input\_client\_secret2) | n/a | `string` | n/a | yes |
| <a name="input_collation_postdb"></a> [collation\_postdb](#input\_collation\_postdb) | Informe uma collection válida para a Database | `string` | n/a | yes |
| <a name="input_componente"></a> [componente](#input\_componente) | Sigla que identifica o tipo do recurso | `string` | n/a | yes |
| <a name="input_departamento"></a> [departamento](#input\_departamento) | Departamento Gestor da Aplicação ou recursos. Nome extraidos da rotina PICS. | `string` | n/a | yes |
| <a name="input_dns_zone_name"></a> [dns\_zone\_name](#input\_dns\_zone\_name) | Insira o nome da zone DNS privada que o recurso irá utillizar | `string` | n/a | yes |
| <a name="input_empresa"></a> [empresa](#input\_empresa) | Definição da empresa responsável pelo custo. Usar o modelo do sistema ORG | `string` | n/a | yes |
| <a name="input_geo_redundant_backup"></a> [geo\_redundant\_backup](#input\_geo\_redundant\_backup) | (Opcional) Ative/desative os backups de servidor com redundância geográfica | `bool` | n/a | yes |
| <a name="input_gerenciamento"></a> [gerenciamento](#input\_gerenciamento) | Define a origem de provisionamento do recurso | `string` | n/a | yes |
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
| <a name="input_subscription_id"></a> [subscription\_id](#input\_subscription\_id) | n/a | `string` | n/a | yes |
| <a name="input_subscription_id2"></a> [subscription\_id2](#input\_subscription\_id2) | n/a | `string` | n/a | yes |
| <a name="input_tenant_id"></a> [tenant\_id](#input\_tenant\_id) | n/a | `string` | n/a | yes |
| <a name="input_tenant_id2"></a> [tenant\_id2](#input\_tenant\_id2) | n/a | `string` | n/a | yes |
| <a name="input_to"></a> [to](#input\_to) | Nome da area de TI responsavel pelo recurso.Nome extraidos da rotina PICS | `string` | n/a | yes |
| <a name="input_vnet_name"></a> [vnet\_name](#input\_vnet\_name) | Insira o nome da vnet onde o recurso será criado | `string` | n/a | yes |

## Outputs

No outputs.
