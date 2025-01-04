variable "subscription_id" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "name" {
  type = string
}

variable "allocation_method" {
  type    = string
  default = "Static"
}

variable "idle_timeout_in_minutes" {
  type    = number
  default = 30
}

variable "sku" {
  type    = string
  default = "Standard"
}

variable "sku_tier" {
  type    = string
  default = "Regional"
}

variable "tags" {
  type    = map(any)
  default = {}
}

variable "zones" {
  type    = list(string)
  default = ["1", "2", "3"]
}

variable "domain_name_label" {
  type    = string
  default = null
}

variable "resource_group" {
  type    = string
  default = null
}

variable "location" {
  type    = string
  default = null
}
