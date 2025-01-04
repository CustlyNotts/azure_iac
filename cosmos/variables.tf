variable "subscription_id" {
  type = string
}
variable "name" {
  type = string
}
variable "resource_group_name" {
  type = string
}
variable "offer_type" {
  type = string
}
variable "kind" {
  type = string
}
variable "mongo_server_version" {
  type    = string
  default = null
}
variable "backup_policy" {
  type = string
}
variable "enable_automatic_failover" {
  type = bool
}
variable "public_network_access_enabled" {
  type    = bool
  default = false
}
variable "is_virtual_network_filter_enabled" {
  type    = bool
  default = false
}
variable "enable_multiple_write_locations" {
  type    = bool
  default = false
}
variable "subnet_ids" {
  type = list(string)
}
variable "private_endpoint_subnet_ids" {
  type = list(string)
}
variable "private_dns_zone_name" {
  type = list(string)
}
variable "private_dns_zone_resource_group_name" {
  type = string
}
variable "ip_range_filter" {
  type    = list(string)
  default = []
}
variable "additional_capabilities" {
  type    = list(string)
  default = []
}
variable "geo_locations" {
  type = any
}
variable "consistency_level" {
  type = string
}
variable "max_interval_in_seconds" {
  type = string
}

variable "max_staleness_prefix" {
  type = string
}
variable "tags" {
  type = map(string)
}

variable "private_dns_zone_enabled" {
  type    = bool
  default = true
}

variable "private_endpoint_name" {
  type    = string
  default = null
}

variable "service_connection_name" {
  type    = string
  default = null
}

variable "private_endpoint_import" {
  type    = bool
  default = false
}

variable "private_connection_resource_id" {
  type    = string
  default = null
}

variable "private_dns_zone_group_name" {
  type    = string
  default = "default"
}

variable "custom_network_interface_name" {
  type    = string
  default = null
}

variable "enable_free_tier" {
  type    = bool
  default = false
}

variable "location" {
  type    = string
  default = null
}

variable "subresource_names" {
  type    = list(string)
  default = null
}
