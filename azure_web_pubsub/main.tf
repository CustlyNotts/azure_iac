resource "azurerm_web_pubsub" "current" {
  name                          = var.name
  location                      = coalesce(var.location, data.azurerm_resource_group.current.location)
  resource_group_name           = data.azurerm_resource_group.current.name
  sku                           = var.sku
  capacity                      = var.capacity
  public_network_access_enabled = var.public_network_access_enabled
  local_auth_enabled            = var.local_auth_enabled
  aad_auth_enabled              = var.aad_auth_enabled
  tls_client_cert_enabled       = var.tls_client_cert_enabled
  tags                          = coalesce(var.tags, data.azurerm_resource_group.current.tags)

  dynamic "live_trace" {
    for_each = var.live_trace != null ? ["live_trace"] : []
    content {
      enabled                   = live_trace.enabled
      messaging_logs_enabled    = live_trace.messaging_logs_enabled
      connectivity_logs_enabled = live_trace.connectivity_logs_enabled
      http_request_logs_enabled = live_trace.http_request_logs_enabled
    }
  }

  dynamic "identity" {
    for_each = var.identity != null ? ["identity"] : []
    content {
      type         = identity.type
      identity_ids = identity.identity_ids
    }
  }
}