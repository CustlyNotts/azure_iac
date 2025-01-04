variable "subscription_id" {
  type = string
}
variable "name" {
  type = string
}
variable "location" {
  type    = string
  default = null
}
variable "resource_group_name" {
  type = string
}
variable "account_tier" {
  type = string
}
variable "custom_domain_name" {
  type    = string
  default = ""
}
variable "account_kind" {
  type    = string
  default = "StorageV2"
}
variable "all_network_access_enabled" {
  type    = bool
  default = false

}

variable "cross_tenant_replication_enabled" {
  type    = bool
  default = false
}

variable "edge_zone" {
  type    = list(string)
  default = null
}

variable "access_tier" {
  type    = string
  default = null

}

variable "min_tls_version" {
  type    = string
  default = "TLS1_2"
}

variable "large_file_share_enabled" {
  type    = bool
  default = null
}
variable "account_replication_type" {
  type = string
}
variable "public_network_access_enabled" {
  type    = bool
  default = false
}
variable "custom_domain_enabled" {
  type    = bool
  default = false
}
variable "soft_delete_enabled" {
  type    = bool
  default = false
}
variable "delete_retention_days" {
  type    = string
  default = 7
}
variable "container_delete_retention_days" {
  type    = string
  default = 7
}
variable "nfsv3_enabled" {
  type    = bool
  default = false
}
variable "subnet_ids" {
  type    = list(string)
  default = []
}

/*variable "location" {
  type = string
  default = null
}*/

variable "allowed_ips" {
  type    = list(string)
  default = []
}
variable "bypass" {
  type    = list(string)
  default = []
}
variable "tags" {
  type    = map(string)
  default = {}
}
#variable "enable_https_traffic_only" {
#  type    = bool
#  default = true
#}
variable "https_traffic_only_enabled" {
  type    = bool
  default = true
}
variable "infrastructure_encryption_enabled" {
  type    = bool
  default = true
}

variable "restore_policy_days" {
  type    = number
  default = null
}

variable "default_service_version" {
  type    = string
  default = null
}

variable "versioning_enabled" {
  type    = bool
  default = false
}

variable "change_feed_enabled" {
  type    = bool
  default = false
}

variable "change_feed_retention_in_days" {
  type    = number
  default = null
}

variable "last_access_time_enabled" {
  type    = bool
  default = false
}
variable "sftp_enabled" {
  type    = bool
  default = false
}
variable "is_hns_enabled" {
  type    = bool
  default = false
}


variable "cors_rule" {
  description = "CORS rules for storage account."
  type = list(object({
    allowed_origins    = list(string)
    allowed_methods    = list(string)
    allowed_headers    = list(string)
    exposed_headers    = list(string)
    max_age_in_seconds = number
  }))
  default = []
}

variable "customer_managed_key" {
  type = object({
    key_vault_key_id          = string
    user_assigned_identity_id = string
  })
  default = null
}

variable "queue_properties" {
  type = list(object({
    logging = optional(object({
      delete                = string
      read                  = string
      version               = string
      write                 = string
      retention_policy_days = optional(number, null)
    }))
    minute_metrics = optional(object({
      enabled               = bool
      version               = string
      include_apis          = optional(string)
      retention_policy_days = number
    }))
    hour_metrics = optional(object({
      enabled               = bool
      version               = string
      include_apis          = string
      retention_policy_days = number
    }))
  }))
  default = []
}

variable "share_properties" {
  type = list(object({
    retention_policy = optional(object({
      days = optional(number, 7)
    }))
    smb = optional(object({
      versions                        = optional(string, null)
      authentication_types            = optional(string, null)
      kerberos_ticket_encryption_type = optional(string)
      channel_encryption_type         = optional(string)
      multichannel_enabled            = optional(string)
    }))
  }))
  default = []
}

variable "private_link_access" {
  type = list(object({
    endpoint_resource_id = string
    endpoint_tenant_id   = string
  }))
  default = []
}

variable "routing" {
  type = list(object({
    publish_internet_endpoints  = optional(bool, false)
    publish_microsoft_endpoints = optional(bool, false)
    choice                      = optional(string, null)
  }))
  default = []
}


variable "static_website" {
  type = object({
    index_document     = optional(string)
    error_404_document = optional(string)
  })
  default = null
}

variable "allow_nested_items_to_be_public" {
  type    = bool
  default = true
}

variable "azure_files_authentication" {
  type = object({
    directory_type      = string
    domain_name         = string
    domain_guid         = string
    domain_sid          = optional(string)
    storage_sid         = optional(string)
    forest_name         = optional(string)
    netbios_domain_name = optional(string)
  })
  default = null
}
