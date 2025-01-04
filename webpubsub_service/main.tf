resource "azurerm_web_pubsub" "current" {
  name                = var.name
  location            = data.azurerm_resource_group.current.location
  resource_group_name = data.azurerm_resource_group.current.name

  sku      = var.sku
  capacity = var.capacity
  tags     = var.tags

  public_network_access_enabled = var.public_network_access_enabled

  dynamic "live_trace" {
    for_each = var.live_trace_enabled == false ? [] : [1]
    content {
      enabled                   = var.live_trace_enabled
      messaging_logs_enabled    = var.live_trace_messaging_logs_enabled
      connectivity_logs_enabled = var.live_trace_connectivity_logs_enabled
    }
  }

}

