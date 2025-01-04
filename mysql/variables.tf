variable "subscription_id" {
  type = string
}
variable "name" {
  type = string
}
variable "resource_group_name" {
  type = string
}
variable "mysql_db_sku" {
  type = string
}
variable "mysql_db_version" {
  type = string
}
variable "administrator_login" {
  type    = string
  default = null
}
variable "administrator_login_password" {
  type    = string
  default = null
}
variable "storage_mb" {
  type    = string
  default = null
}
variable "auto_grow_enabled" {
  type    = bool
  default = null
}
variable "backup_retention_days" {
  type    = string
  default = null
}
variable "geo_redundant_backup_enabled" {
  type    = bool
  default = null
}
variable "infrastructure_encryption_enabled" {
  type    = bool
  default = null
}
variable "public_network_access_enabled" {
  type    = bool
  default = null
}
variable "ssl_enforcement_enabled" {
  type    = bool
  default = true
}
variable "ssl_minimal_tls_version_enforced" {
  type    = string
  default = null
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
  type = list(string)
}

variable "vlink_resource_group_name" {
  type = list(string)
}

variable "custom_network_interface_name" {
  type = list(string)
}

variable "pe_resource_group_name" {
  type = list(string)
}

variable "key_vault_id" {
  type        = string
  description = "Resource ID of the key vault"
  default     = "/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rg-infrateam/providers/Microsoft.KeyVault/vaults/kv-infradbcreds"
}