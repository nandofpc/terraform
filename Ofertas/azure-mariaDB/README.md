# Event Hub


## 1. Nomenclatura

O nome é definido na variavel var.name

## 2. Configurar os parâmetros necessários

* Seguir documentação do módulo

## 3. Inicializar o Terraform

```
terraform init
```

##  4. Avaliar o plano de execução do Terraform

```
terraform plan 
```

## 5. Executar o Terraform

```bash
terraform apply 
```

## 6. Destruir o recurso/stack criado

```
terraform destroy 
```

## 7. Arquivos de variáveis

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_DataRG"></a> [DataRG](#module\_DataRG) | git::https://pusrdvop:OTA5OTk5OTQ5NjM5OnUGGcZ4iOMS5I6eMPBMKf+VRrtA@bitbucket.bradesco.com.br:8443/scm/cpppv/cloud-portal-modulos-iac.git//Azu-DataRG | n/a |
| <a name="module_mysqldatabase"></a> [mysqldatabase](#module\_mysqldatabase) | git::https://pusrdvop:OTA5OTk5OTQ5NjM5OnUGGcZ4iOMS5I6eMPBMKf+VRrtA@bitbucket.bradesco.com.br:8443/scm/cpppv/cloud-portal-modulos-iac.git//Azu-Mysql_Database | n/a |
| <a name="module_mysqlserver"></a> [mysqlserver](#module\_mysqlserver) | git::https://pusrdvop:OTA5OTk5OTQ5NjM5OnUGGcZ4iOMS5I6eMPBMKf+VRrtA@bitbucket.bradesco.com.br:8443/scm/cpppv/cloud-portal-modulos-iac.git//Azu-Mysql_Server | n/a |
| <a name="module_tags_finops"></a> [tags\_finops](#module\_tags\_finops) | git::https://pusrdvop:OTA5OTk5OTQ5NjM5OnUGGcZ4iOMS5I6eMPBMKf+VRrtA@bitbucket.bradesco.com.br:8443/scm/cpppv/cloud-portal-modulos-iac.git//Azu-Tags_FinOps | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_admin_password"></a> [admin\_password](#input\_admin\_password) | n/a | `string` | n/a | yes |
| <a name="input_admin_username"></a> [admin\_username](#input\_admin\_username) | n/a | `string` | n/a | yes |
| <a name="input_ambiente"></a> [ambiente](#input\_ambiente) | Ambiente de implantação da aplicação, serviço ou carga de trabalho | `string` | n/a | yes |
| <a name="input_app"></a> [app](#input\_app) | Nome da aplicação que o recursos esta relacionado | `string` | n/a | yes |
| <a name="input_bo"></a> [bo](#input\_bo) | Nome da area de negocio responsavel pelo recurso. Poderá ter multiplos BO's. Nome extraidos da rotina PICS. | `string` | n/a | yes |
| <a name="input_centro_custo"></a> [centro\_custo](#input\_centro\_custo) | O centro de custo de contabilidade associado a este recurso Codigo de junção, informações do sistema CARO | `string` | n/a | yes |
| <a name="input_db_name"></a> [db\_name](#input\_db\_name) | n/a | `string` | n/a | yes |
| <a name="input_departamento"></a> [departamento](#input\_departamento) | Departamento Gestor da Aplicação ou recursos. Nome extraidos da rotina PICS. | `string` | n/a | yes |
| <a name="input_empresa"></a> [empresa](#input\_empresa) | Definição da empresa responsável pelo custo. Usar o modelo do sistema ORG | `string` | n/a | yes |
| <a name="input_mysql_name"></a> [mysql\_name](#input\_mysql\_name) | n/a | `string` | n/a | yes |
| <a name="input_mysqlversion"></a> [mysqlversion](#input\_mysqlversion) | n/a | `string` | n/a | yes |
| <a name="input_retbkp"></a> [retbkp](#input\_retbkp) | n/a | `string` | n/a | yes |
| <a name="input_rg_name"></a> [rg\_name](#input\_rg\_name) | n/a | `string` | n/a | yes |
| <a name="input_skuname"></a> [skuname](#input\_skuname) | n/a | `string` | n/a | yes |
| <a name="input_storagemb"></a> [storagemb](#input\_storagemb) | n/a | `string` | n/a | yes |
| <a name="input_to"></a> [to](#input\_to) | Nome da area de TI responsavel pelo recurso.Nome extraidos da rotina PICS. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_mysqldatabase"></a> [mysqldatabase](#output\_mysqldatabase) | n/a |
| <a name="output_mysqlserver"></a> [mysqlserver](#output\_mysqlserver) | n/a |
<!-- END_TF_DOCS -->