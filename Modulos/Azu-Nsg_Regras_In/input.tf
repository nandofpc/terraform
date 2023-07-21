variable "rg_name" {
  type = string

}
variable "location" {
  type = string

}
variable "nsg_name" {
  type = string

}

variable "flowlog_name" {
  type = string

}

variable "staccount_name" {
  type = string
}

variable "strg_name" {
  type = string
}

variable "loganalywork_name" {
  type = string 
}

variable "loganalyworkrg_name" {
  type = string
}

variable "netwatcher_name" {
  type = string
}

variable "netwatcherrg_name" {
  type = string
}

variable "porta_destino" {
  type = list(string)
}

variable "regras_entrada" {
  type    = list(string)
}
 
variable "prioridade" {
  type    = number
}

variable "index_prioridade" {
  type    = number
}


variable "origem" {
  type    = list(string)
}

variable "porta_origem" {
  type = list(string)
}

variable "destino_prefix" {
  type    = list(string)
}

variable "protocolo" {
  type    = string
}

variable "regra_acesso" {
  type = string
}

variable "direcao" {
  type = string
 
} 

variable "tags" {
  type        = map(any)
  description = "Recebe os valores de FinOps."
}
