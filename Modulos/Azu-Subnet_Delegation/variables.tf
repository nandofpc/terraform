variable "rg_name_vnet" {
  type        = string
  description = "Resource Group Existente vnet"
}

variable "rg_name" {
  type        = string
  description = "Resource Group Existente"
}

variable "rg_name_nsg" {
  type        = string
  description = "Resource Group Existente nsg"
}

variable "vnet_name" {
  type        = string
  description = "Informe o nome da Rede virtual existente"
}

variable "subnets" {
  type = list(object({
    name                    = string
    address_prefixes        = list(string)
    service-delegation_name = optional(string)

  }))
}

variable "ambiente" {
  type = string
}

variable "rt_name" {
  type = string
}

variable "nsg_name" {
  type = string
}

variable "pe-net_policy" {
  type    = bool
  default = false
}

variable "pl-net_policy" {
  type    = bool
  default = false

}

variable "service_endpoints" {
  type    = list(string)
  default = []

}
variable "delegation_name" {
  type = string
}

#####################################

variable "enable_service_endpoints" {
  description = "Tipos de chave disponíveis"
  type        = bool
  default     = false

}

variable "enable_service_delegation" {
  description = "Tipos de chave disponíveis"
  type        = bool
  default     = false

}
