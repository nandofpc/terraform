variable "rg_name" {
  type = string
}

variable "location" {
  type = string
}

#Variareis Vnet

variable "vnet_name" {
  type = string
}

variable "address_space" {
  type = list(string)
}

variable "dns1" {
  type    = string
  default = "10.233.194.8"
}

variable "dns2" {
  type    = string
  default = "10.233.194.9"
}

variable "dns3" {
  type    = string
  default = "10.233.194.137"
}

variable "dns4" {
  type    = string
  default = "10.233.194.138"
}

# Peering
variable "allowaccessvnet" {
  type        = string
  description = "true/false"
}

variable "allowtrafficvnet" {
  type        = string
  description = "true/false"
}

variable "remotegate" {
  type        = string
  description = "true/false"
}

variable "allowaccesshub" {
  type        = string
  description = "true/false"
}

variable "allowtraffichub" {
  type        = string
  description = "true/false"
}

variable "gatetransithub" {
  type        = string
  description = "true/false"
}

variable "vnet_hub_name" {
  type = string
}

variable "rg_hub_name" {
  type = string
}

variable "remotegatehub" {
  type = string
}

variable "vnet_dmz_name" {
  type = string
}

variable "remotegatedmz" {
  type = string
}

variable "allowaccessdmz" {
  type = string
}

variable "allowtrafficdmz" {
  type = string

}

variable "rg_dmz_name" {
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

variable "subscription_id2" {
  type = string
}

variable "client_id2" {
  type = string
}

variable "client_secret2" {
  type = string
}

variable "tenant_id2" {
  type = string
}

variable "rg_pr_dmz_name" {
  type = string
}

variable "vnet_pr_dmz_name" {
  type = string
}

variable "gatetransitdmz" {
  type = string
}

variable "remotegatevnet" {
  type = string

}

#Tags Finops
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
  description = "Nome da area de negocio responsavel pelo recurso. Poderá ter multiplos BOs. Nome extraidos da rotina PICS."
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

variable "dominio" {
  type = string

}

