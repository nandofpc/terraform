#---------------------
# Variavel para utilização no randon
#------------------
variable "digito" {
  type        = number
  description = "Valor para quantidade de digitos"
}

#----------------------------------
# Variáveis do RG
#----------------------------------

variable "network_access_policy" {
  type        = string
  description = "Define se o acesso ao disco gerenciado será : Negado, PrivateEndPoint ou Aberto"
}


variable "is_secure_boot_enable" {
  type        = bool
  description = "Define a maquina será do tipo TRUSTED"
  default     = false
}
variable "vtpm_enable" {
  type        = bool
  description = "Define a maquina será do tipo TRUSTED"
  default     = false
}
#---------------------------------
# Variáveis do data vnet e subnet
#----------------------------------

variable "vnet_name" {
  type        = string
  description = "Digite o nome da vnet existente."
}
variable "subnet_name" {
  type        = string
  description = "Digite o nome da subnet existente."
}
variable "vnet_rg_name" {
  type        = string
  description = "Selecione o grupo de recurso existente."
}

#---------------------------------
# Variáveis do recurso recovery
#----------------------------------

variable "rec_vault_name" {
  type        = string
  description = "Nome do Recovery Service Vault"
}

variable "resource_group_vault" {
  type        = string
  description = "Grupo de Recurso do Recovery Service Vault"
}

variable "bkp_name_vm" {
  type        = string
  description = "Nome da politica de backup a ser associada."
}

#---------------------------------
# Variáveis encryption set
#----------------------------------

variable "encryption_set_name" {
  type        = string
  description = "Nome do Encryption Set"
}

variable "resource_group_encryption_set" {
  type        = string
  description = "Nome do Grupo de recurso doEncryption Set"
}

#---------------------------------
# Variáveis do recurso vms
#----------------------------------

variable "vms_name" {
  type = list(string)
}

variable "zone" {
  type    = list(string)
  
}

variable "zone_pr" {
  type    = list(string)
  
}

variable "ambiente" {
  type = string

}

variable "rg_name_vm" {
  type        = string
  description = "Grupo de recurso da virtual machine"
}

variable "admin_username" {
  type        = string
  description = "Define o nome do usuário (root)"
}

variable "admin_password" {
  type        = string
  description = "Define a password do usuário (root)"
}

variable "size" {
  type        = string
  description = "Tipo de Size"
}
variable "storage_account_type" {
  type        = string
  description = "Tipo de Conta de Armazenamento."
}

variable "source_image_id" {
  type        = string
  description = "URI da imagem linux."
}

variable "allow_extension_operations" {
  type        = bool
  description = "Allow extension."
  default     = false
}

variable "disable_password_authentication" {
  type        = bool
  description = "Habilitar password."
  default     = false
}

variable "encryption_at_host_enabled" {
  type        = bool
  description = "Encriptação de host."
  default     = false
}

variable "disk_size_gb" {
  type        = string
  description = "Escolha o tamanho do disco"
}

#---------------------------------
# Variáveis do disco gerenciado
#---------------------------------

variable "disk_storage_account_type" {
  type        = string
  description = "Tipo de Conta de Armazenamento de Disco."
}

variable "disk_size_gb_disk" {
  type        = string
  description = "Escolha o tamanho do disco"
}

variable "lun" {
  type        = number
  description = "O número da unidade lógica do disco de dados, que precisa ser exclusivo na máquina virtual. Alterar isso força a criação de um novo recurso"
}

#---------------------------------
# Variáveis tags finops e default
#---------------------------------
variable "tags" {
  type        = map(any)
  description = "Recebe os valores de FinOps."
}

variable "oper_resp" {
  type        = string
  description = "Ambiente de provisionamento"
}





