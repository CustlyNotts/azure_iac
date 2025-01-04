variable "subscription_id" {
  type = string
}
variable "name" {
  type = string
}
variable "resource_group_name" {
  type = string
}
variable "postgresql_version" {
  type = string
}
variable "sku_name" {
  type = string
}
variable "delegated_subnet_id" {
  type    = string
  default = null
}
variable "storage_mb" {
  type = string
}
variable "administrator_login" {
  type = string
}
variable "administrator_password" {
  type    = string
  default = null
}
variable "postgresql_databases" {
  type = map(object({
    charset   = string
    collation = string
  }))
}
variable "tags" {
  type    = map(string)
  default = {}
}

variable "use_existing_dns" {
  type    = bool
  default = false
}

variable "ssl_enforcement_enabled" {
  type    = bool
  default = true
}

variable "auto_grow_enabled" {
  type    = bool
  default = true
}

variable "geo_redundant_backup_enabled" {
  type    = bool
  default = false
}

variable "backup_retention_days" {
  type    = number
  default = 7
}

variable "ssl_minimal_tls_version_enforced" {
  type    = string
  default = "TLS1_2"
}

variable "public_network_access_enabled" {
  type    = bool
  default = false
}

variable "location" {
  type = string
}

variable "create_mode" {
  type    = string
  default = "Default"
}

variable "infrastructure_encryption_enabled" {
  type    = bool
  default = true
}

variable "creation_source_server_id" {
  type    = string
  default = null
}

variable "threat_detection_policy" {
  type = object({
    disabled_alerts            = optional(list(string))
    email_account_admins       = optional(bool, null)
    email_addresses            = optional(list(string), null)
    enabled                    = optional(bool, null)
    retention_days             = optional(number, null)
    storage_account_access_key = optional(string, null)
    storage_endpoint           = optional(string, null)
  })
  default = null
}

variable "key_vault_id" {
  type        = string
  description = "Resource ID of the key vault"
  default     = "/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rg-infrateam/providers/Microsoft.KeyVault/vaults/kv-infradbcreds"
}