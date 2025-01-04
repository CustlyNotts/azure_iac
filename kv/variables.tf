variable "subscription_id" {
  type = string
}
variable "name" {
  type = string
}
variable "resource_group_name" {
  type = string
}
variable "pe_resource_group_name" {
  type    = string
  default = ""
}

variable "sku_name" {
  type = string
}

variable "location" {
  type    = string
  default = null
}

variable "tags" {
  type    = map(string)
  default = {}
}

variable "access_policies" {
  type = list(object({
    object_id               = string
    key_permissions         = optional(list(string), [])
    secret_permissions      = optional(list(string), [])
    certificate_permissions = optional(list(string), [])
    storage_permissions     = optional(list(string), [])
  }))
  default = []
}

variable "enabled_for_deployment" {
  type    = bool
  default = true
}

variable "enabled_for_disk_encryption" {
  type    = bool
  default = true
}

variable "enabled_for_template_deployment" {
  type    = bool
  default = true
}

variable "enable_rbac_authorization" {
  type    = bool
  default = true
}

variable "purge_protection_enabled" {
  type    = bool
  default = true
}

variable "use_existing_dns" {
  type    = string
  default = false
}
variable "custom_network_interface_name" {
  type    = string
  default = null
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

variable "create_private_endpoint" {
  type    = bool
  default = true
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

variable "public_network_access_enabled" {
  type    = bool
  default = false
}

variable "soft_delete_retention_days" {
  type    = number
  default = 90
}