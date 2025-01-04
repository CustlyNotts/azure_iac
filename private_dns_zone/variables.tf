variable "subscription_id" {
  type = string
}

variable "pdz_link_name" {
  type        = list(string)
  description = "Name of the Private DNS Zone VNeT link"
}

variable "virtual_network_id" {
  type = list(string)
}

variable "name" {
  type        = string
  description = "Name of the Private DNS Zone"
}

variable "vlink_counter" {
  type        = number
  default     = 1
  description = "Number of virtual network links. Defaults to 1"
}

variable "resource_group_name" {
  type = string
}

variable "tags" {
  type    = map(any)
  default = {}
}

variable "vlink_tags" {
  type    = map(any)
  default = {}
}