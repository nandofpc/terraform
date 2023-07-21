variable "admin_username" {
  type     = string
}

variable "admin_password" {
  type     = string
}

variable "rg_name" {
  type    = string
}

variable "mariadb_name" {
  type     = string
}

variable "db_name" {
  type     = string
}

variable "skuname" {
  type     = string
}

variable "storagemb" {
  type     = string
}

variable "mariadbversion" {
  type     = string
}

variable "retbkp" {
  type     = string
}

## Modulo de Tags

variable "centro_custo" {
  description = "O centro de custo de contabilidade associado a este recurso Codigo de junção, informações do sistema CARO"
  type = string
}

variable "empresa" {
  description = "Definição da empresa responsável pelo custo. Usar o modelo do sistema ORG"
  type = string
}

variable "departamento" {
  description = "Departamento Gestor da Aplicação ou recursos. Nome extraidos da rotina PICS."
  type = string
}

variable "app" {
  description = "Nome da aplicação que o recursos esta relacionado"
  type = string
}

variable "ambiente" {
  description = "Ambiente de implantação da aplicação, serviço ou carga de trabalho"
  type = string
}

variable "bo" {
  description = "Nome da area de negocio responsavel pelo recurso. Poderá ter multiplos BOs. Nome extraidos da rotina PICS."
  type = string
}

variable "to" {
  description = "Nome da area de TI responsavel pelo recurso.Nome extraidos da rotina PICS."
  type = string
}

variable "componente" {
  type = string
}  

variable "gerenciamento" {
  type = string
}  