variable "location" {
  type = string
}

variable "rg_name" {
  type = string
}

variable "rg_name_pe" {
  type = string
}

variable "capacity" {
  type        = number
  description = "Insira o valor de capacidade (de 1 à 5)"
}

variable "redis_name" {
  type = string
}

variable "vnet_name" {
  type = string
}

variable "subnet_name" {
  type = string
}

variable "family" {
  type = string
}

variable "zones" {
  type = list(string)
}

variable "replica" {
  type = number
}

variable "sku_name" {
  type = string
}

variable "private_endpoint_name" {
  type = string
}

variable "psc_name" {
  type = string
}

variable "dns_zone_name" {
  type = string
}

variable "rg_name_vnet" {
  type = string  
}

variable "rg_name_dns_zone" {
  type = string 
}

## Modulo de Tags

variable "centro_custo" {
  description = "O centro de custo de contabilidade associado a este recurso Codigo de junção, informações do sistema CARO"
  type        = string
}

variable "empresa" {
  description = "Definição da empresa responsável pelo custo. Usar o modelo do sistema ORG"
  type        = string
}

variable "departamento" {
  description = "Departamento Gestor da Aplicação ou recursos. Nome extraidos da rotina PICS."
  type        = string
}

variable "app" {
  description = "Nome da aplicação que o recursos esta relacionado"
  type        = string
}

variable "ambiente" {
  description = "Ambiente de implantação da aplicação, serviço ou carga de trabalho"
  type        = string
}

variable "bo" {
  description = "Nome da area de negocio responsavel pelo recurso. Poderá ter multiplos BO's. Nome extraidos da rotina PICS."
  type        = string
}

variable "to" {
  description = "Nome da area de TI responsavel pelo recurso.Nome extraidos da rotina PICS."
  type        = string
}

variable "componente" {
  type = string
}

variable "gerenciamento" {
  type = string
}

variable "subscription_id" {
  type = string

}

variable "client_id" {
  type = string

}

variable "client_secret" {
  type = string

}

variable "tenant_id" {
  type = string

}
