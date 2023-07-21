variable "resource_group_vms" {
  type        = string
  description = "Resource Group das VMs"
}
variable "resource_group_vnets" {
  type        = string
  description = "Resource Group da vNet"
}
variable "resource_group_encryption_set" {
  type        = string
  description = "Resource Group da Disk Encryption Sets"
}
variable "resource_group_gallery" {
  type        = string
  description = "Resource Group da Galeria"
}
variable "resource_group_shared_image" {
  type        = string
  description = "Resource Group da Imagem"
}

variable "vnet_name" {
  type        = string
  description = "Nome da vNet"
}

variable "subnet_name" {
  type        = string
  description = "Nome da Subnet"
}
variable "encryption_set_name" {
  type        = string
  description = "Nome do Encryption Set"
}
variable "gallery_name" {
  type        = string
  description = "Nome da Galeria"
}
variable "shared_image_name" {
  type        = string
  description = "Nome da Imagem a ser usada"
}

variable "vms_name" {
  type = list(string)
  description = "Nome das Maquinas Virtuais que irão compor o cluster"
}

variable "size" {
  type        = string
  description = "Tipo de Size"
}


variable "storage_account_type" {
  type        = string
  description = "Tipo de Conta de Armazenamento."
}


#Subs
variable "subscription_id" {
  description = "subscription id de ditigerenciamento"
  type        = string
}

variable "client_id" {
  description = "Client id do ditigerenciamento"
  type        = string
}

variable "client_secret" {
  description = "Client secret do ditigerenciamento"
  type        = string
}
variable "tenant_id" {
  description = "Tenant id do ditigerenciamento"
  type        = string
}


#2
variable "subscription_id2" {
  description = "subscription id de ditigerenciamento"
  type        = string
}

variable "client_id2" {
  description = "Client id do ditigerenciamento"
  type        = string
}

variable "client_secret2" {
  description = "Client secret do ditigerenciamento"
  type        = string
}
variable "tenant_id2" {
  description = "Tenant id do ditigerenciamento"
  type        = string
}

#FINOPS
variable "centro_custo" {
  description = "Selecione o centro de custo."
  default     = ""
  type        = string
}

variable "empresa" {
  description = "Selecione a empresa. Origem das informações: Sistemas UORG. Ex.: 'banco_bradesco_financiamentos_sa'."
  default     = ""
  type        = string
}

variable "departamento" {
  description = "Escolha o departamento responsável."
  default     = ""
  type        = string
}

variable "app" {
  description = "Digite o nome da aplicação. O campo permite somente letras minúsculas separado por underscore. Quantidade máxima de 63 caracteres."
  default     = ""
  type        = string
}


variable "ambiente" {
  description = "Selecione o ambiente para o deploy do recurso."
  default     = ""
  type        = string
}

variable "bo" {
  description = "Selecione o responsável de negócio."
  default     = ""
  type        = string
}

variable "to" {
  description = "Selecione o técnico responsável."
  default     = ""
  type        = string
}

variable "componente" {
  default = "cassandracluster_brso"
  type    = string
}

variable "gerenciamento" {
  default = "vra"
  type    = string
}

