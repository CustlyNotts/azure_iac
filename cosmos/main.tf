resource "azurerm_cosmosdb_account" "current" {
  name                              = var.name
  location                          = data.azurerm_resource_group.current.location
  resource_group_name               = var.resource_group_name
  offer_type                        = var.offer_type
  kind                              = var.kind
  mongo_server_version              = var.kind == "MongoDB" ? var.mongo_server_version : null
  enable_automatic_failover         = var.enable_automatic_failover
  enable_multiple_write_locations   = var.enable_multiple_write_locations
  public_network_access_enabled     = var.public_network_access_enabled
  is_virtual_network_filter_enabled = var.is_virtual_network_filter_enabled
  ip_range_filter                   = join(",", concat(local.cosmosdb_ip_range_azure, var.ip_range_filter))
  dynamic "virtual_network_rule" {
    for_each = var.subnet_ids
    content {
      id                                   = virtual_network_rule.value
      ignore_missing_vnet_service_endpoint = true
    }
  }
  dynamic "capabilities" {
    for_each = var.additional_capabilities != null ? var.additional_capabilities : []
    content {
      name = capabilities.value
    }
  }
  backup {
    type = var.backup_policy == "Continuous7Days" || var.backup_policy == "Continuous30Days" ? "Continuous" : "Periodic"
  }
  consistency_policy {
    consistency_level       = var.consistency_level
    max_interval_in_seconds = var.max_interval_in_seconds
    max_staleness_prefix    = var.max_staleness_prefix
  }
  dynamic "geo_location" {
    for_each = var.geo_locations
    content {
      location          = geo_location.value["geo_location"]
      failover_priority = geo_location.value["failover_priority"]
      zone_redundant    = geo_location.value["zone_redundant"]
    }
  }
  tags = var.tags

  lifecycle {
    prevent_destroy = true
  }
}

resource "azapi_update_resource" "current" {
  count       = var.backup_policy == "Continuous7Days" || var.backup_policy == "Continuous30Days" ? 1 : 0
  type        = "Microsoft.DocumentDB/databaseAccounts@2022-08-15-preview"
  resource_id = azurerm_cosmosdb_account.current.id

  body = jsonencode({
    "properties" = {
      "backupPolicy" = {
        "type" : "Continuous",
        "continuousModeProperties" : {
          "tier" : var.backup_policy
        }
      }
    }
  })
}

resource "azurerm_private_endpoint" "current" {
  for_each            = toset(var.private_endpoint_subnet_ids)
  name                = var.name
  location            = data.azurerm_resource_group.current.location
  resource_group_name = var.resource_group_name
  subnet_id           = each.value

  private_service_connection {
    name                           = var.name
    private_connection_resource_id = azurerm_cosmosdb_account.current.id
    is_manual_connection           = false
    subresource_names              = [var.kind]
  }

  dynamic "private_dns_zone_group" {
    for_each = var.private_dns_zone_name
    content {
      name                 = data.azurerm_private_dns_zone.current.name
      private_dns_zone_ids = [data.azurerm_private_dns_zone.current.id]
    }
  }
  tags = var.tags

  lifecycle {
    prevent_destroy = true
  }
}