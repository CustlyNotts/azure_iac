variable "subscription_id" {
  type = string
}
variable "name" {
  type = string
}
variable "resource_group_name" {
  type = string
}
variable "mssql_version" {
  type = string
}
variable "administrator_login" {
  type    = string
  default = null
}
variable "minimum_tls_version" {
  type    = string
  default = "1.2"
}
variable "administrator_password" {
  type    = string
  default = null
}

variable "tags" {
  type    = map(string)
  default = {}
}

variable "azuread_administrator" {
  type = list(object({
    azuread_authentication_only = bool
    login_username              = string
    object_id                   = string
    tenant_id                   = optional(string)
  }))
}

variable "public_network_access_enabled" {
  type    = bool
  default = false
}

variable "mssql_elastic_pool" {
  type = map(object({
    max_size_gb  = number
    sku_name     = string
    sku_tier     = string
    sku_family   = optional(string)
    sku_capacity = number
    min_capacity = number
    max_capacity = number
  }))
  default = {}
}


variable "mssql_databases" {
  type = map(object({
    create_mode                         = string
    elastic_pool_name                   = optional(string, null)
    transparent_data_encryption_enabled = optional(bool)
  }))
}

variable "location" {
  type    = string
  default = null
}

variable "key_vault_id" {
  type        = string
  description = "Resource ID of the key vault"
  default     = "/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rg-infrateam/providers/Microsoft.KeyVault/vaults/kv-infradbcreds"
}