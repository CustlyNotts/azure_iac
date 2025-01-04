resource "azurerm_redis_cache" "current" {
  name                = var.name
  location            = coalesce(var.location, data.azurerm_resource_group.current.location)
  resource_group_name = var.resource_group_name
  capacity            = var.capacity
  family              = var.family
  sku_name            = var.sku
  #enable_non_ssl_port           = var.enable_non_ssl_port
  non_ssl_port_enabled          = var.enable_non_ssl_port
  minimum_tls_version           = var.minimum_tls_version
  public_network_access_enabled = var.public_network_access_enabled
  dynamic "redis_configuration" {
    for_each = var.redis_configuration == null ? [] : [1]
    content {
      aof_backup_enabled              = redis_configuration.value.aof_backup_enabled
      aof_storage_connection_string_0 = redis_configuration.value.aof_storage_connection_string_0
      aof_storage_connection_string_1 = redis_configuration.value.aof_storage_connection_string_1
      #enable_authentication = redis_configuration.value.enable_authentication
      authentication_enabled                  = redis_configuration.value.enable_authentication
      active_directory_authentication_enabled = redis_configuration.value.active_directory_authentication_enabled
      maxmemory_reserved                      = redis_configuration.value.maxmemory_reserved
      maxmemory_delta                         = redis_configuration.value.maxmemory_delta
      maxmemory_policy                        = redis_configuration.value.maxmemory_policy
      data_persistence_authentication_method  = redis_configuration.value.data_persistence_authentication_method
      maxfragmentationmemory_reserved         = redis_configuration.value.maxfragmentationmemory_reserved
      rdb_backup_enabled                      = redis_configuration.value.rdb_backup_enabled
      rdb_backup_frequency                    = redis_configuration.value.rdb_backup_frequency
      rdb_backup_max_snapshot_count           = redis_configuration.value.rdb_backup_max_snapshot_count
      rdb_storage_connection_string           = redis_configuration.value.rdb_storage_connection_string
      storage_account_subscription_id         = redis_configuration.value.storage_account_subscription_id
      notify_keyspace_events                  = redis_configuration.value.notify_keyspace_events
    }
  }
  tags = data.azurerm_resource_group.current.tags

  lifecycle {
    prevent_destroy = true
  }
}

resource "azurerm_private_endpoint" "pe" {
  count                         = var.pe_counter
  name                          = var.use_existing_pe ? var.private_endpoint_name[count.index] : "pe-${var.name}-${count.index}"
  location                      = data.azurerm_resource_group.current.location
  resource_group_name           = var.pe_resource_group_name[count.index]
  subnet_id                     = var.subnet_id[count.index]
  custom_network_interface_name = var.use_existing_pe ? var.custom_network_interface_name[count.index] : "pe-${var.name}-nic-${count.index}"
  tags                          = data.azurerm_resource_group.current.tags

  private_service_connection {
    name                           = var.use_existing_dns ? var.private_service_connection_name[count.index] : "psc-${var.name}-${count.index}"
    private_connection_resource_id = azurerm_redis_cache.current.id
    subresource_names              = ["redisCache"]
    is_manual_connection           = var.manual_connection # Defaults to false
  }

  dynamic "private_dns_zone_group" {
    for_each = var.pdz_counter == 0 ? [] : [1]
    content {
      name                 = var.use_existing_dns ? var.private_dns_zone_group_name[count.index] : "pdz-group-${var.name}-${count.index}"
      private_dns_zone_ids = var.use_existing_dns ? [var.private_dns_zone_ids[count.index]] : [azurerm_private_dns_zone.pdz[count.index].id] # [azurerm_private_dns_zone.example.id]
    }
  }

  lifecycle {
    prevent_destroy = true
  }
}

resource "azurerm_private_dns_zone" "pdz" {
  count               = var.pdz_counter
  name                = var.use_existing_dns ? var.pdz_name[count.index] : "${var.name}-${count.index}-pdz.privatelink.redis.cache.windows.net"
  resource_group_name = var.pdz_resource_group_name[count.index]

  lifecycle {
    prevent_destroy = true
  }
}

resource "azurerm_private_dns_zone_virtual_network_link" "pdz-link" {
  count                 = var.vlink_counter
  name                  = var.use_existing_dns ? var.pdz_link_name[count.index] : "pdz-link-${var.name}-${count.index}"
  resource_group_name   = var.vlink_resource_group_name[count.index]
  private_dns_zone_name = var.use_existing_dns ? var.linked_pdz_name[count.index] : azurerm_private_dns_zone.pdz[count.index].name
  virtual_network_id    = var.virtual_network_id[count.index]

  lifecycle {
    prevent_destroy = true
  }
}
