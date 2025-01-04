resource "azurerm_mysql_server" "current" {
  name                = var.name
  location            = data.azurerm_resource_group.current.location
  resource_group_name = var.resource_group_name

  administrator_login          = var.administrator_login
  administrator_login_password = var.administrator_login_password

  sku_name   = var.mysql_db_sku
  storage_mb = var.storage_mb
  version    = var.mysql_db_version

  auto_grow_enabled                 = var.auto_grow_enabled
  backup_retention_days             = var.backup_retention_days
  geo_redundant_backup_enabled      = var.geo_redundant_backup_enabled
  infrastructure_encryption_enabled = var.infrastructure_encryption_enabled
  public_network_access_enabled     = var.public_network_access_enabled
  ssl_enforcement_enabled           = var.ssl_enforcement_enabled
  ssl_minimal_tls_version_enforced  = var.ssl_minimal_tls_version_enforced

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
    private_connection_resource_id = azurerm_mysql_server.current.id
    subresource_names              = ["mysqlServer"]
    is_manual_connection           = var.manual_connection # Defaults to false
  }

  private_dns_zone_group {
    name                 = var.use_existing_dns ? var.private_dns_zone_group_name[count.index] : "pdz-group-${var.name}-${count.index}"
    private_dns_zone_ids = var.use_existing_dns ? [var.private_dns_zone_ids[count.index]] : [azurerm_private_dns_zone.pdz[count.index].id] # [azurerm_private_dns_zone.example.id]
  }

  lifecycle {
    prevent_destroy = true
  }
}

resource "azurerm_private_dns_zone" "pdz" {
  count               = var.pdz_counter
  name                = var.use_existing_dns ? var.pdz_name[count.index] : "${var.name}-${count.index}-pdz.privatelink.mysql.database.azure.com"
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
}

resource "azurerm_key_vault_secret" "password" {
  name         = "${var.administrator_login}-at-${azurerm_mysql_server.current.name}"
  key_vault_id = var.key_vault_id
  value        = var.administrator_login_password
}

