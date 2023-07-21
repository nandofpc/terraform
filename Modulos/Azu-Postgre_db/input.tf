// =======================================
// ===  Variáveis do resource postgre  ===
// =======================================

variable "postname" {
  type = string
}

variable "location" {
  type = string
}

variable "rg_name" {
  type        = string
  description = "Resource Group Existente"
}

variable "sku" {
  type        = string
  description = "tier + family + cores = B_Gen4_1"
}

variable "pg_version" {
  type        = string
  description = "Versão do postgres"
}

variable "storagesize" {
  type        = string
  description = "Tamanho do armazenamento em MB"
}

variable "retention" {
  type        = string
  description = "Tempo de retenção do backup"
}

variable "auto_grow" {
  type        = bool
  description = "(Opcional) Ative/desative o crescimento automático do armazenamento"
}

variable "geo_redundant_backup" {
  type        = bool
  description = "(Opcional) Ative/desative os backups de servidor com redundância geográfica"
}

variable "minimal_tls" {
  type = string
}

variable "ssl_enforcement" {
  type        = bool
  description = "(Obrigatório) Especifica se o SSL deve ser aplicado nas conexões. Os valores possíveis são true e false."
}

variable "public_network" {
  type        = bool
  description = "(Opcional) Se o acesso à rede pública é permitido ou não para este servidor. O padrão é verdadeiro."
}

variable "infrastructure_encryption" {
  type        = bool
  description = "(Opcional) Se a infraestrutura é criptografada ou não para este servidor. O padrão é falso. Alterar isso força um novo recurso a ser criado"
}

variable "tags" {
  type = map(any)
}

variable "tagsbkp" {
  type = map(any)
}

// =====================================
// ===  Variáveis Key-vault Postgres ===
// =====================================

variable "name_key_vault" {
  type = string
}

variable "rg_name_key_vault" {
  type = string
}

variable "name_secret_user" {
  type = string
}

variable "name_secret_password" {
  type = string
  //sensitive = true
}

// ====================================
// ===  Variáveis Postgre Database  ===
// ====================================

variable "name_postdb" {
  type        = string
  description = "Nome do Database do PostgreSQL"
}

variable "charset_postdb" {
  type        = string
  description = "Conjunto de caracteres para o Database do PostgreSQL"
}

variable "collation_postdb" {
  type        = string
  description = "Informe uma collection válida para a Database"
}

// ====================================
// ===  Variáveis rules do postgre  ===
// ====================================

variable "ignore_endpoint_postrule" {
  type        = bool
  description = "(Opcional) As regras do postgre devem ser criadas depois que a subnet já tenha sido configurado com um endpoint"
}

// ===========================================
// ===  Variáveis para Endpoint postgre_pe ===
// ===========================================

variable "gerenciamento_vnet_name" {
  type        = string
  description = "Insira o Nome da VNET de Gerenciamento (Onde se encontra o Jump)"
}

variable "gerenciamento_vnet_rg_name" {
  type        = string
  description = "Insira o Nome do Grupo de Recurso da VNET de Gerenciamento"
}

variable "jump_subnet_name" {
  type        = string
  description = "Insira o Nome da Subnet de Gerenciamento (Onde se encontra o Jump)"
}

variable "vnet_name" {
  type        = string
  description = "Insira o nome da vnet onde o recurso será criado"
}

variable "rg_name_vnet" {
  type        = string
  description = "Nome do Grupo de Recurso Existente da VNet e Subnet"
}

variable "subnet_name" {
  type        = string
  description = "Insira o nome da subnet onde o recurso será criado"
}

variable "dns_zone_name" {
  type        = string
  description = "Insira o nome da zone DNS privada que o recurso irá utillizar"
}

variable "rg_name_dns_zone" {
  type        = string
  description = "Nome do Grupo de Recurso Existente da Zona de DNS"
}

variable "private_endpoint_name" {
  type        = string
  description = "Nome do Private Endpoint"
}

variable "rg_name_pe" {
  type        = string
  description = "Nome do Grupo de Recurso Existente do Private Endpoint"
}

variable "psc_name" {
  type        = string
  description = "Insira um nome para a conexão privada"
}

variable "is_manual_connection" {
  type        = bool
  description = "Requer aprovação manual do Recurso remoto"
}