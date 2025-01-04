resource "azurerm_postgresql_flexible_server" "current" {
  name                          = var.name
  resource_group_name           = var.resource_group_name
  location                      = data.azurerm_resource_group.current.location
  version                       = var.postgresql_version
  administrator_login           = var.administrator_login
  administrator_password        = var.administrator_password
  public_network_access_enabled = var.public_network_access_enabled
  storage_mb                    = var.storage_mb
  sku_name                      = var.sku_name
  #delegated_subnet_id    = var.use_existing_dns ? var.delegated_subnet_id : data.azurerm_subnet.current.id
  private_dns_zone_id = var.use_existing_dns ? var.private_dns_zone_id : azurerm_private_dns_zone.current[0].id
  tags                = var.tags
  depends_on = [
    azurerm_private_dns_zone_virtual_network_link.current
  ]
  lifecycle {
    ignore_changes = [
      administrator_password,
      zone
    ]
    prevent_destroy = true
  }
  authentication {
    active_directory_auth_enabled = true
    tenant_id                     = var.tenant_id
  }
  identity {
    type         = "UserAssigned"
    identity_ids = [var.object_id]
  }

}

resource "azurerm_postgresql_flexible_server_database" "current" {
  for_each  = var.postgresql_flexible_databases
  name      = each.key
  server_id = azurerm_postgresql_flexible_server.current.id
  collation = each.value.collation
  charset   = each.value.charset

  lifecycle {
    prevent_destroy = true
  }
}

resource "azurerm_private_dns_zone" "current" {
  count               = var.use_existing_dns ? 0 : 1
  name                = "${var.name}.private.postgres.database.azure.com"
  resource_group_name = coalesce(var.pdz_resource_group_name, var.resource_group_name)

  lifecycle {
    prevent_destroy = true
  }
}

resource "azurerm_private_dns_zone_virtual_network_link" "current" {
  count                 = var.use_existing_dns ? 0 : 1
  name                  = coalesce(var.pdz_vnet_link, var.name)
  private_dns_zone_name = azurerm_private_dns_zone.current[0].name
  virtual_network_id    = data.azurerm_virtual_network.current.id
  resource_group_name   = coalesce(var.pdz_resource_group_name, azurerm_private_dns_zone.current[0].resource_group_name)
}

resource "azurerm_key_vault_secret" "password" {
  name         = "${var.administrator_login}-at-${azurerm_postgresql_flexible_server.current.name}"
  key_vault_id = var.key_vault_id
  value        = var.administrator_password
}
