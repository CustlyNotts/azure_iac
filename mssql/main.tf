# resource "azurerm_sql_server" "current" {
#   name                         = var.name
#   resource_group_name          = var.resource_group_name
#   location                     = data.azurerm_resource_group.current.location
#   version                      = var.sql_version
#   administrator_login          = var.administrator_login
#   administrator_login_password = var.administrator_password
#   tags = var.tags
# }


resource "azurerm_mssql_server" "current" {
  name                          = var.name
  resource_group_name           = var.resource_group_name
  location                      = coalesce(var.location, data.azurerm_resource_group.current.location)
  version                       = var.mssql_version
  administrator_login           = var.administrator_login
  administrator_login_password  = var.administrator_password
  minimum_tls_version           = var.minimum_tls_version
  public_network_access_enabled = var.public_network_access_enabled
  tags                          = var.tags

  dynamic "azuread_administrator" {
    for_each = var.azuread_administrator
    content {
      azuread_authentication_only = azuread_administrator.value.azuread_authentication_only
      login_username              = azuread_administrator.value.login_username
      object_id                   = azuread_administrator.value.object_id
      tenant_id                   = data.azurerm_client_config.current.tenant_id
    }
  }

  lifecycle {
    prevent_destroy = true
  }
}

resource "azurerm_mssql_elasticpool" "elastic_pool" {
  for_each            = var.mssql_elastic_pool
  name                = each.key
  resource_group_name = var.resource_group_name
  location            = data.azurerm_resource_group.current.location
  server_name         = azurerm_mssql_server.current.name
  max_size_gb         = each.value.max_size_gb
  tags                = var.tags

  sku {
    name     = each.value.sku_name
    tier     = each.value.sku_tier
    family   = lookup(each.value, "sku_family", null)
    capacity = each.value.sku_capacity
  }

  per_database_settings {
    min_capacity = each.value.min_capacity
    max_capacity = each.value.max_capacity
  }
}

resource "azurerm_mssql_database" "db" {
  for_each                            = var.mssql_databases
  name                                = each.key
  server_id                           = azurerm_mssql_server.current.id
  elastic_pool_id                     = each.value.elastic_pool_name != null ? azurerm_mssql_elasticpool.elastic_pool[each.value.elastic_pool_name].id : null
  create_mode                         = each.value.create_mode
  transparent_data_encryption_enabled = each.value.transparent_data_encryption_enabled
  tags                                = var.tags

  lifecycle {
    prevent_destroy = true
  }
}

resource "azurerm_key_vault_secret" "password" {
  name         = "${var.administrator_login}-at-${azurerm_mssql_server.current.name}"
  key_vault_id = var.key_vault_id
  value        = var.administrator_password
}
