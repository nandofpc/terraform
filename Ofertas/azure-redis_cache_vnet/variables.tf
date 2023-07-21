variable "location" {
  type = string
  #default = "brazilsouth"

}

variable "rg_name" {
  type = string
  #default = "rgmysqldbiac"

}

variable "capacity" {
  type = string
  #default = "2"
  description = "Insira o valor de capacidade (de 1 à 5)"

}

variable "redis_name" {
  type = string
  #default = "testeredis001"


}

variable "vnet_name" {
  type = string
  #default = "vnet-redis"

}

variable "subnet_name" {
  type = string
  #default = "subnet-redis"

}

variable "vnet_address" {
  type    = list(string)
  default = ["192.168.0.0/16"]
}

variable "subnet_address" {
  type    = list(string)
  default = ["192.168.1.0/24"]

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
