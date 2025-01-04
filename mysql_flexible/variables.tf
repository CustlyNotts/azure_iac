variable "subscription_id" {
  type = string
}
variable "name" {
  type = string
}
variable "resource_group_name" {
  type = string
}
variable "mysql_version" {
  type = string
}
variable "sku_name" {
  type = string
}
variable "delegated_subnet_id" {
  type = string
}
variable "auto_grow_enabled" {
  type = bool
}
variable "iops" {
  type = string
}
variable "size_gb" {
  type = string
}
variable "zone" {
  type    = string
  default = null
}
variable "private_dns_zone_name" {
  type = string
}
variable "private_dns_zone_resource_group_name" {
  type = string
}
variable "administrator_login" {
  type = string
}
variable "mysql_flexible_databases" {
  type = map(object({
    charset   = string
    collation = string
  }))
}
variable "tags" {
  type    = map(string)
  default = {}
}

variable "location" {
  type    = string
  default = null
}

variable "io_scaling_enabled" {
  type    = bool
  default = false
}

variable "identity_type" {
  type    = string
  default = null
}


variable "maintenance_window" {
  type = object({
    day_of_week  = optional(number)
    start_hour   = optional(number)
    start_minute = optional(number)
  })
  default = null
}

variable "aad_auth_enabled" {
  type    = bool
  default = true
}


variable "identity_ids" {
  description = "User managed identity to authenticate the AD"
  type        = list(string)
  default     = ["/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rg-dbmanagedidentities-prod/providers/Microsoft.ManagedIdentity/userAssignedIdentities/AAD-Auth-database-managedidentity"]
}

variable "key_vault_id" {
  type        = string
  description = "Resource ID of the key vault"
  default     = "/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rg-infrateam/providers/Microsoft.KeyVault/vaults/kv-infradbcreds"
}