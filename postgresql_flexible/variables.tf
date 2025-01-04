variable "subscription_id" {
  type = string
}
variable "name" {
  type = string
}
variable "resource_group_name" {
  type = string
}
variable "virtual_network" {
  type = string
}
variable "virtual_network_resource_group" {
  type = string
}
variable "subnet" {
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
  type = string
}
variable "postgresql_flexible_databases" {
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

variable "private_dns_zone_id" {
  type = string
}

variable "pdz_vnet_link" {
  type    = string
  default = null
}

variable "pdz_resource_group_name" {
  type    = string
  default = null
}
variable "object_id" {
  type    = string
  default = "/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rg-dbmanagedidentities-prod/providers/Microsoft.ManagedIdentity/userAssignedIdentities/AAD-Auth-database-managedidentity"
}

variable "tenant_id" {
  type    = string
  default = "2bd16c9b-7e21-4274-9c06-7919f7647bbb"
}


variable "public_network_access_enabled" {
  type    = bool
  default = false
}

variable "key_vault_id" {
  type        = string
  description = "Resource ID of the key vault"
  default     = "/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rg-infrateam/providers/Microsoft.KeyVault/vaults/kv-infradbcreds"
}

