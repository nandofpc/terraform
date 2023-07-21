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

variable "rg_bkp_policy" {
  type        = string
  description = "Nome do Grupo de Recurso a da politica de backup a ser associada."
}


variable "disk_size" {
  type        = number
  description = "Tamanho do disco"
}

variable "lun" {
  type        = number
  description = "O número da unidade lógica do disco de dados, que precisa ser exclusivo na máquina virtual. Alterar isso força a criação de um novo recurso"
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


variable "vms_name" {
  type        = list(string)
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


variable "source_image_id" {
  type        = string
  description = "URI da imagem."
}

variable "tags" {
  type        = map(any)
  description = "Recebe os valores de FinOps."
}

variable "tags_bkp" {
  type        = map(any)
  description = "Recebe os valores de bkp."
}

variable "oper_resp" {
  type        = string
  description = "Para o Ansible."
}

variable "aplicacao" {
  type        = string
  description = "Para o Ansible."
}

variable "ambiente" {
  type        = string
  description = "Para o Ansible."
}
