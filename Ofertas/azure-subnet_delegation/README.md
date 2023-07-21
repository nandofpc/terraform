# Documentação do Modulo de Subnet

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

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_subnet.subnet](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_rg_name"></a> [rg\_name](#input\_rg\_name) | Resource Group Existente | `string` | n/a | yes |
| <a name="input_subnet_name"></a> [subnet\_name](#input\_subnet\_name) | n/a | `string` | n/a | yes |
| <a name="input_subnet_space"></a> [subnet\_space](#input\_subnet\_space) | n/a | `list(string)` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | n/a | `map` | n/a | yes |
| <a name="input_vnet_name"></a> [vnet\_name](#input\_vnet\_name) | n/a | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_subnet_out"></a> [subnet\_out](#output\_subnet\_out) | n/a |
<!-- END_TF_DOCS -->