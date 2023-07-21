# Documentação do Modulo de Subscription


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
| [azurerm_subscription.subscription](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subscription) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_billing_scope_id"></a> [billing\_scope\_id](#input\_billing\_scope\_id) | n/a | `string` | n/a | yes |
| <a name="input_subscription_name"></a> [subscription\_name](#input\_subscription\_name) | n/a | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | n/a | `map` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->