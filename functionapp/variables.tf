variable "subscription_id" {
  type = string
}
variable "service_plan_name" {
  type = string
}
variable "os_type" {
  type = string
}
variable "sku_name" {
  type = string
}
variable "function_app_name" {
  type = string
}
variable "resource_group_name" {
  type        = string
  description = "Resource group of the Function App"
  default     = null
}

variable "service_plan_resource_group_name" {
  type        = string
  description = "Resource group of the Service Plan"
  default     = null
}

variable "storage_account_resource_group_name" {
  type        = string
  description = "Resource group of the Storage Account"
}

variable "storage_account_name" {
  type = string
}
variable "storage_account_tier" {
  type    = string
  default = "Standard"
}
variable "storage_account_kind" {
  type    = string
  default = "StorageV2"
}
variable "storage_account_replication_type" {
  type    = string
  default = "LRS"
}
variable "storage_account_cross_tenant_replication_enabled" {
  type    = bool
  default = true
}
variable "https_only" {
  type    = bool
  default = true
}
variable "builtin_logging_enabled" {
  type    = bool
  default = true
}
variable "client_certificate_mode" {
  type    = string
  default = "Optional"
}
# variable "site_config" {
#   type    = map(string)
#   default = {}
# }
variable "virtual_network_subnet_id" {
  type    = string
  default = null
}
variable "identity_enabled" {
  type    = bool
  default = false
}
variable "identity_type" {
  type    = string
  default = null
}
variable "tags" {
  type    = map(string)
  default = {}
}
variable "ftps_state" {
  type    = string
  default = "FtpsOnly"
}
variable "http2_enabled" {
  type    = bool
  default = true
}
variable "node_version" {
  type    = string
  default = ""
}

variable "location" {
  type    = string
  default = null
}

variable "public_network_access_enabled" {
  type    = bool
  default = false
}

variable "functions_extension_version" {
  type    = string
  default = "~4"
}


variable "min_tls_version" {
  type    = string
  default = "TLS1_2"
}

variable "fn_public_network_access_enabled" {
  type    = bool
  default = true
}

variable "dotnet_version" {
  type    = string
  default = ""
}

variable "allow_nested_items_to_be_public" {
  type    = bool
  default = true
}

variable "use_dotnet_isolated_runtime" {
  type    = bool
  default = false
}
