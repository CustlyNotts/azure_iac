variable "subscription_id" {
  type = string
}

variable "app_service_custom_name" {
  type = string
}

variable "use_existing_dns" {
  type    = string
  default = false
}

variable "private_endpoint_name" {
  type = list(string)
}

variable "subnet_id" {
  type = list(string)
}

variable "private_service_connection_name" {
  type = list(string)
}

variable "manual_connection" {
  type    = bool
  default = false
}

variable "private_dns_zone_group_name" {
  type = list(string)
}

variable "private_dns_zone_ids" {
  type = list(string)
}

variable "pdz_resource_group_name" {
  type = list(string)
}

variable "pdz_link_name" {
  type = list(string)
}

variable "virtual_network_id" {
  type = list(string)
}

variable "use_existing_pe" {
  type    = bool
  default = false
}

variable "pdz_name" {
  type = list(string)
}

variable "counter" {
  type    = number
  default = 1
}

variable "vlink_counter" {
  type    = number
  default = 1
}

variable "linked_pdz_name" {
  type = list(string)
}

variable "vlink_resource_group_name" {
  type = list(string)
}


variable "sub_resource_id" {
  type = string
}

variable "location" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "extra_tags" {
  type    = map(string)
  default = {}
}
