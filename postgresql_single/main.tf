resource "azurerm_postgresql_server" "current" {
  name                             = var.name
  resource_group_name              = var.resource_group_name
  location                         = var.location
  version                          = var.postgresql_version
  administrator_login              = var.administrator_login
  administrator_login_password     = var.administrator_password
  storage_mb                       = var.storage_mb
  sku_name                         = var.sku_name
  create_mode                      = var.create_mode
  backup_retention_days            = var.backup_retention_days
  geo_redundant_backup_enabled     = var.geo_redundant_backup_enabled
  auto_grow_enabled                = var.auto_grow_enabled
  creation_source_server_id        = var.creation_source_server_id
  ssl_enforcement_enabled          = var.ssl_enforcement_enabled
  public_network_access_enabled    = var.public_network_access_enabled
  ssl_minimal_tls_version_enforced = var.ssl_minimal_tls_version_enforced
  tags                             = var.tags

  dynamic "threat_detection_policy" {
    for_each = var.threat_detection_policy != null ? [var.threat_detection_policy] : []
    content {
      disabled_alerts            = threat_detection_policy.value.disabled_alerts
      email_account_admins       = threat_detection_policy.value.email_account_admins
      email_addresses            = threat_detection_policy.value.email_addresses
      enabled                    = threat_detection_policy.value.enabled
      retention_days             = threat_detection_policy.value.retention_days
      storage_account_access_key = threat_detection_policy.value.storage_account_access_key
      storage_endpoint           = threat_detection_policy.value.storage_endpoint
    }
  }
  # depends_on = [
  #  azurerm_private_dns_zone_virtual_network_link.current
  #]
  lifecycle {
    ignore_changes = [
      administrator_login_password
    ]
    prevent_destroy = true
  }
}

resource "azurerm_postgresql_database" "current" {
  for_each            = var.postgresql_databases
  name                = each.key
  resource_group_name = var.resource_group_name
  server_name         = azurerm_postgresql_server.current.name
  collation           = each.value.collation
  charset             = each.value.charset

  lifecycle {
    prevent_destroy = true
  }
}

resource "azurerm_key_vault_secret" "password" {
  name         = "${var.administrator_login}-at-${azurerm_postgresql_server.current.name}"
  key_vault_id = var.key_vault_id
  value        = var.administrator_password
}