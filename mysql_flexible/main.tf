resource "azurerm_mysql_flexible_server" "current" {
  name                   = var.name
  resource_group_name    = var.resource_group_name
  location               = var.location == null ? data.azurerm_resource_group.current.location : var.location
  administrator_login    = var.administrator_login
  administrator_password = random_password.current.result
  version                = var.mysql_version
  sku_name               = var.sku_name
  delegated_subnet_id    = var.delegated_subnet_id
  zone                   = var.zone
  private_dns_zone_id    = data.azurerm_private_dns_zone.current.id
  storage {
    auto_grow_enabled  = var.auto_grow_enabled
    iops               = var.iops
    size_gb            = var.size_gb
    io_scaling_enabled = var.io_scaling_enabled
  }

  dynamic "identity" {
    for_each = var.identity_type != null ? [1] : []
    content {
      type         = var.identity_type
      identity_ids = var.identity_ids
    }
  }

  dynamic "maintenance_window" {
    for_each = var.maintenance_window != null ? ["maintenance_window"] : []
    content {
      day_of_week  = var.maintenance_window.day_of_week
      start_hour   = var.maintenance_window.start_hour
      start_minute = var.maintenance_window.start_minute
    }
  }

  tags = var.tags
  lifecycle {
    ignore_changes = [
      administrator_password
    ]
    #prevent_destroy = true
  }
}

resource "azurerm_mysql_flexible_database" "current" {
  for_each            = var.mysql_flexible_databases
  name                = each.key
  resource_group_name = data.azurerm_resource_group.current.location
  server_name         = azurerm_mysql_flexible_server.current.name
  charset             = each.value.charset
  collation           = each.value.collation

  lifecycle {
    #prevent_destroy = true
  }
}

resource "random_password" "current" {
  length           = 16
  special          = true
  override_special = "!#$%&*()-_=+[]{}<>:?"
  lifecycle {
    ignore_changes = all
  }
}

resource "azurerm_mysql_flexible_server_active_directory_administrator" "current" {
  count       = var.aad_auth_enabled ? 1 : 0
  server_id   = azurerm_mysql_flexible_server.current.id
  identity_id = var.identity_ids[0]
  login       = "Azure.DBAdmin"
  object_id   = data.azurerm_client_config.current.client_id
  tenant_id   = data.azurerm_client_config.current.tenant_id
}

#resource "azurerm_key_vault_secret" "password" {
#  name = "${var.administrator_login}-at-${azurerm_mysql_flexible_server.current.name}"
#  key_vault_id = var.key_vault_id
#  value = random_password.current.result
#}