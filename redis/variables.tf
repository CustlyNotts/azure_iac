variable "subscription_id" {
  type = string
}

variable "name" {
  type = string
}

variable "resource_group_name" {
  type    = string
  default = null
}

variable "capacity" {
  type = string
}

variable "family" {
  type = string
}

variable "sku" {
  type = string
}

variable "enable_non_ssl_port" {
  type    = bool
  default = false
}

variable "minimum_tls_version" {
  type    = string
  default = null
}

variable "public_network_access_enabled" {
  type    = bool
  default = false
}

variable "use_existing_dns" {
  type    = string
  default = false
}

variable "private_endpoint_name" {
  type    = list(string)
  default = [null]
}

variable "subnet_id" {
  type    = list(string)
  default = [null]
}

variable "private_service_connection_name" {
  type    = list(string)
  default = [null]
}

variable "manual_connection" {
  type    = bool
  default = false
}

variable "private_dns_zone_group_name" {
  type    = list(string)
  default = ["default"]
}

variable "private_dns_zone_ids" {
  type    = list(string)
  default = [null]
}

variable "pdz_resource_group_name" {
  type    = list(string)
  default = [null]
}

variable "pdz_link_name" {
  type    = list(string)
  default = [null]
}

variable "virtual_network_id" {
  type    = list(string)
  default = [null]
}

variable "use_existing_pe" {
  type    = bool
  default = false
}

variable "pdz_name" {
  type    = list(string)
  default = [null]
}

variable "pe_counter" {
  type    = number
  default = 1
}

variable "pdz_counter" {
  type    = number
  default = 1
}

variable "vlink_counter" {
  type    = number
  default = 1
}

variable "linked_pdz_name" {
  type    = list(string)
  default = [null]
}

variable "vlink_resource_group_name" {
  type    = list(string)
  default = [null]
}

variable "custom_network_interface_name" {
  type    = list(string)
  default = [null]
}

variable "pe_resource_group_name" {
  type    = list(string)
  default = [null]
}

variable "redis_configuration" {
  type    = map(any)
  default = null
}

variable "location" {
  type    = string
  default = null
}