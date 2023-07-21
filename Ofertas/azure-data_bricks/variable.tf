variable "rg_name" {
  type = string
}

variable "rg_vnet" {
  type = string

}

variable "rg_pe" {
  type = string

}

variable "rg_nsg" {
  type = string

}

variable "location" {
  type = string
}

variable "pubaccess" {
  type = string
}

variable "databricks_name" {
  type = string
}

variable "sku" {
  type    = string
  default = "premium"
}

variable "empresa" {
  type = string
}

variable "centro_custo" {
  type = string
}

variable "departamento" {
  type = string
}

variable "app" {
  type = string
}

variable "componente" {
  type = string
}

variable "ambiente" {
  type = string
}

variable "bo" {
  type = string
}

variable "to" {
  type = string
}

variable "gerenciamento" {
  type = string
}


variable "vnet_name" {
  type = string
}

variable "subnet_public_name" {
  type = string
}

variable "subnet_private_name" {
  type = string
}

variable "subnet_public_ip" {
  type = list(string)
}

variable "subnet_private_ip" {
  type = list(string)
}


variable "private_endpoint_name" {
  type = string
}

variable "subnet_endpoint_name" {
  type        = string
  description = "Digite o nome da subnet privada."
}

variable "databricks_psc" {
  type = string
}

variable "dns_record" {
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
variable "dns_zone_name" {
  type        = string
  description = "Digite a zona dns."
}
variable "rg_dns" {
  type        = string
  description = "Escolha o grupo de recurso do dns."
}

variable "label" {
  type    = string
  default = "allow_in"
}

variable "list_type" {
  type    = string
  default = "ALLOW"
}

variable "databricks_st_name" {
  type        = string
  description = "Define o nome do storage account que será criado pelo databricks."
}

variable "st_name_enable" {
  type    = bool
  default = false
}
variable "ip_addresses" {
  type = list(string)

}
