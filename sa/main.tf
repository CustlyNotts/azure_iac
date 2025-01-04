resource "azurerm_storage_account" "current" {
  name                              = var.name
  resource_group_name               = var.resource_group_name
  location                          = coalesce(var.location, data.azurerm_resource_group.current.location)
  account_tier                      = var.account_tier
  account_kind                      = var.account_kind
  account_replication_type          = var.account_replication_type
  public_network_access_enabled     = var.public_network_access_enabled
  nfsv3_enabled                     = var.nfsv3_enabled
  large_file_share_enabled          = var.large_file_share_enabled
  cross_tenant_replication_enabled  = var.cross_tenant_replication_enabled
  infrastructure_encryption_enabled = var.infrastructure_encryption_enabled
  https_traffic_only_enabled        = var.https_traffic_only_enabled
  min_tls_version                   = var.min_tls_version
  allow_nested_items_to_be_public   = var.allow_nested_items_to_be_public
  sftp_enabled                      = var.sftp_enabled
  is_hns_enabled                    = var.is_hns_enabled

  dynamic "blob_properties" {
    for_each = var.soft_delete_enabled ? [1] : []
    content {
      delete_retention_policy {
        days = var.delete_retention_days
      }
      dynamic "restore_policy" {
        for_each = var.restore_policy_days != null ? [1] : []
        content {
          days = var.restore_policy_days
        }
      }
      versioning_enabled  = var.versioning_enabled
      change_feed_enabled = var.change_feed_enabled
      #change_feed_retention_in_days = var.change_feed_retention_in_days != null ? var.change_feed_retention_in_days : 0
      default_service_version  = var.default_service_version
      last_access_time_enabled = var.last_access_time_enabled
      dynamic "container_delete_retention_policy" {
        for_each = var.container_delete_retention_days != null ? [1] : []
        content {
          days = var.container_delete_retention_days
        }
      }


      dynamic "cors_rule" {
        for_each = var.cors_rule
        content {
          allowed_origins    = cors_rule.value.allowed_origins
          allowed_methods    = cors_rule.value.allowed_methods
          allowed_headers    = cors_rule.value.allowed_headers
          exposed_headers    = cors_rule.value.exposed_headers
          max_age_in_seconds = cors_rule.value.max_age_in_seconds
        }
      }
    }
  }
  tags = var.tags
  dynamic "network_rules" {
    for_each = var.public_network_access_enabled ? [1] : []
    content {
      default_action             = var.all_network_access_enabled ? "Allow" : "Deny"
      ip_rules                   = var.allowed_ips
      virtual_network_subnet_ids = var.subnet_ids
      bypass                     = var.bypass
      dynamic "private_link_access" {
        for_each = var.private_link_access
        content {
          endpoint_resource_id = private_link_access.value.endpoint_resource_id
          endpoint_tenant_id   = private_link_access.value.endpoint_tenant_id
        }
      }
    }
  }

  dynamic "queue_properties" {
    for_each = var.queue_properties
    content {
      dynamic "logging" {
        for_each = var.queue_properties[*].logging
        content {
          delete                = logging.value.delete
          read                  = logging.value.read
          version               = logging.value.version
          write                 = logging.value.write
          retention_policy_days = logging.value.retention_policy_days
        }
      }
      dynamic "minute_metrics" {
        for_each = var.queue_properties[*].minute_metrics
        content {
          enabled               = minute_metrics.value.enabled
          version               = minute_metrics.value.version
          include_apis          = minute_metrics.value.include_apis
          retention_policy_days = minute_metrics.value.retention_policy_days
        }
      }
      dynamic "hour_metrics" {
        for_each = var.queue_properties[*].hour_metrics
        content {
          enabled               = hour_metrics.value.enabled
          version               = hour_metrics.value.version
          include_apis          = hour_metrics.value.include_apis
          retention_policy_days = hour_metrics.value.retention_policy_days
        }
      }
      dynamic "cors_rule" {
        for_each = var.cors_rule
        content {
          allowed_origins    = cors_rule.value.allowed_origins
          allowed_methods    = cors_rule.value.allowed_methods
          allowed_headers    = cors_rule.value.allowed_headers
          exposed_headers    = cors_rule.value.exposed_headers
          max_age_in_seconds = cors_rule.value.max_age_in_seconds
        }
      }
    }
  }

  dynamic "share_properties" {
    for_each = var.share_properties
    content {
      dynamic "retention_policy" {
        for_each = share_properties.value.retention_policy
        content {
          days = retention_policy.value.days
        }
      }
      dynamic "smb" {
        for_each = var.share_properties[*].smb
        content {
          versions                        = smb.value.versions
          authentication_types            = smb.value.authentication_types
          kerberos_ticket_encryption_type = smb.value.kerberos_ticket_encryption_type
          channel_encryption_type         = smb.value.channel_encryption_type
          multichannel_enabled            = smb.value.multichannel_enabled
        }
      }
    }
  }


  dynamic "routing" {
    for_each = var.routing
    content {
      publish_internet_endpoints  = routing.value.publish_internet_endpoints
      publish_microsoft_endpoints = routing.value.publish_microsoft_endpoints
      choice                      = routing.value.choice
    }
  }

  dynamic "static_website" {
    for_each = var.static_website != null ? [var.static_website] : []
    content {
      index_document     = static_website.value.index_document
      error_404_document = static_website.value.error_404_document
    }
  }

  dynamic "custom_domain" {
    for_each = var.custom_domain_enabled ? [1] : []
    content {
      name = var.custom_domain_name
    }
  }

  dynamic "azure_files_authentication" {
    for_each = var.azure_files_authentication != null ? [var.azure_files_authentication] : []
    content {
      directory_type = azure_files_authentication.value.directory_type

      dynamic "active_directory" {
        for_each = azure_files_authentication.value.directory_type == "AD" ? [var.azure_files_authentication] : []
        content {
          domain_name         = azure_files_authentication.value.domain_name
          domain_guid         = azure_files_authentication.value.domain_guid
          domain_sid          = azure_files_authentication.value.domain_sid
          storage_sid         = azure_files_authentication.value.storage_sid
          forest_name         = azure_files_authentication.value.forest_name
          netbios_domain_name = azure_files_authentication.value.netbios_domain_name
        }
      }
    }
  }

  lifecycle {
    prevent_destroy = true
  }
  # lifecycle {
  #   ignore_changes = [
  #     tags["Application Name"],
  #     tags["Application Owner"],
  #     tags["ENV"]
  #   ]
  # }
}
