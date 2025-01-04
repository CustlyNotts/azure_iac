variable "subscription_id" {
  type = string
}

variable "name" {
  type = string
}
variable "resource_group_name" {
  type = string
}
variable "capacity" {
  type = number
}

variable "public_network_access_enabled" {
  type    = bool
  default = false
}


variable "sku" {
  type = string
}

variable "tags" {
  type    = map(string)
  default = {}
}