variable "location" {
  type    = string
  default = "brazilsouth"

}

variable "rg" {
  type = string
  default = "rgmysqldbiac"

}

variable "capacity" {
  type = string
  default = "2"

}

variable "family" {
  type = string
  default = "C"

}

variable "sku_name" {
  type = string
  default = "Standard"


}

variable "redis_name" {
  type = string
  default = "testeredis001"


}
