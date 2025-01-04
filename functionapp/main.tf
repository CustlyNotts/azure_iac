resource "azurerm_service_plan" "current" {
  name                = var.service_plan_name
  resource_group_name = coalesce(var.service_plan_resource_group_name, var.resource_group_name)
  location            = coalesce(var.location, data.azurerm_resource_group.current.location)
  os_type             = var.os_type
  sku_name            = var.sku_name
  tags                = data.azurerm_resource_group.current.tags

  lifecycle {
    #prevent_destroy = false
  }
}

resource "azurerm_storage_account" "current" {
  name                             = var.storage_account_name
  resource_group_name              = coalesce(var.storage_account_resource_group_name, var.resource_group_name)
  location                         = coalesce(var.location, data.azurerm_resource_group.current.location)
  account_tier                     = var.storage_account_tier
  account_kind                     = var.storage_account_kind
  account_replication_type         = var.storage_account_replication_type
  cross_tenant_replication_enabled = var.storage_account_cross_tenant_replication_enabled
  public_network_access_enabled    = var.public_network_access_enabled
  allow_nested_items_to_be_public  = var.allow_nested_items_to_be_public
  min_tls_version                  = var.min_tls_version
  tags                             = data.azurerm_resource_group.current.tags

  lifecycle {
    #prevent_destroy = false
  }
}

resource "azurerm_linux_function_app" "current" {
  count               = var.os_type == "Linux" ? 1 : 0
  name                = var.function_app_name
  resource_group_name = var.resource_group_name
  location            = coalesce(var.location, data.azurerm_resource_group.current.location)

  storage_account_name          = azurerm_storage_account.current.name
  storage_account_access_key    = azurerm_storage_account.current.primary_access_key
  service_plan_id               = azurerm_service_plan.current.id
  https_only                    = var.https_only
  builtin_logging_enabled       = var.builtin_logging_enabled
  client_certificate_mode       = var.client_certificate_mode
  public_network_access_enabled = var.fn_public_network_access_enabled

  dynamic "identity" {
    for_each = var.identity_enabled ? [1] : []
    content {
      type = var.identity_type
    }
  }
  site_config {
    ftps_state    = var.ftps_state
    http2_enabled = var.http2_enabled
    application_stack {
      node_version = var.node_version
    }
  }
  virtual_network_subnet_id = var.virtual_network_subnet_id
  tags                      = merge(data.azurerm_resource_group.current.tags, var.tags)
  lifecycle {
    ignore_changes = [
      site_config,
      tags,
      app_settings,
      sticky_settings
    ]
    prevent_destroy = false
  }
}

resource "azurerm_windows_function_app" "current" {
  count               = var.os_type == "Windows" ? 1 : 0
  name                = var.function_app_name
  resource_group_name = var.resource_group_name
  location            = coalesce(var.location, data.azurerm_resource_group.current.location)

  storage_account_name          = azurerm_storage_account.current.name
  storage_account_access_key    = azurerm_storage_account.current.primary_access_key
  service_plan_id               = azurerm_service_plan.current.id
  https_only                    = var.https_only
  builtin_logging_enabled       = var.builtin_logging_enabled
  client_certificate_mode       = var.client_certificate_mode
  functions_extension_version   = var.functions_extension_version
  public_network_access_enabled = var.fn_public_network_access_enabled

  dynamic "identity" {
    for_each = var.identity_enabled ? [1] : []
    content {
      type = var.identity_type
    }
  }
  site_config {
    ftps_state    = var.ftps_state
    http2_enabled = var.http2_enabled
    dynamic "application_stack" {
      for_each = var.node_version != "" || var.dotnet_version != "" ? [1] : []
      content {
        node_version                = var.node_version != "" ? var.node_version : null
        dotnet_version              = var.dotnet_version != "" ? var.dotnet_version : null
        use_dotnet_isolated_runtime = var.dotnet_version != "" ? "true" : "false"
      }
    }
  }
  virtual_network_subnet_id = var.virtual_network_subnet_id
  tags                      = merge(data.azurerm_resource_group.current.tags, var.tags)
  lifecycle {
    ignore_changes = [
      site_config,
      app_settings,
      tags,
      sticky_settings
    ]
    #prevent_destroy = false
  }
}
