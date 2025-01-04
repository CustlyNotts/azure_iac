variable "subscription_id" {
  type = string
}

variable "name" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "sku" {
  type = string
}

variable "capacity" {
  type    = string
  default = 1
}

variable "tags" {
  type    = map(string)
  default = {}
}