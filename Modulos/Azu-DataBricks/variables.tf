#----------------------------------
# Variáveis do databricks
#----------------------------------
variable "rg_name" {
  type        = string
  description = "Selecione o grupo do recurso do databriks."
}

variable "rg_vnet" {
  type = string

}

variable "rg_pe" {
  type = string

}

variable "rg_dns" {
  type = string

}

variable "rg_nsg" {
  type = string

}

variable "location" {
  type        = string
  description = "Selecione a localização."
}

variable "databricks_name" {
  type        = string
  description = "Digite o nome do databriks workspace."
}

variable "sku" {
  type        = string
  description = "Selecione o sku para o databricks."
}

variable "pubaccess" {
  type        = string
  description = "Permitir acesso publico"
}

variable "tags" {
  type        = map(any)
  description = "Recebe os valores de FinOps."
}

#----------------------------------
# Variáveis da vnet e subnet
#----------------------------------
variable "vnet_name" {
  type        = string
  description = "Selecione o nome da vnet."
}

variable "subnet_public_ip" {
  type        = list(string)
  description = "Digite a subnet pública."
}

variable "subnet_private_ip" {
  type        = list(string)
  description = "Digite a subnet privada."
}

variable "subnet_public_name" {
  type        = string
  description = "Digite o nome da subnet pública."
}

variable "subnet_private_name" {
  type        = string
  description = "Digite o nome da subnet privada."
}

variable "subnet_endpoint_name" {
  type        = string
  description = "Digite o nome da subnet privada."
}

variable "label" {
  type    = string
  default = "allow_in"
}

variable "list_type" {
  type    = string
  default = "ALLOW"
}

variable "ip_addresses" {
  type = list(string)

}



#---------------------------------
# Variáveis do private endpoint
#--------------------------------
variable "private_endpoint_name" {
  type        = string
  description = "Digite o nome do private endpoint."
}

variable "databricks_psc" {
  type        = string
  description = "Digite o nome da conexão do private endpoint"
}

#----------------------
# Variáveis do dns
#----------------------

variable "dns_zone_name" {
  type        = string
  description = "Nome da zona de dns."
}

variable "dns_record" {
  type = string

}


variable "databricks_st_name" {
  type        = string
  description = "Define o nome do storage account que será criado pelo databricks."
}

variable "st_name_enable" {
  type    = bool
  default = false
}

