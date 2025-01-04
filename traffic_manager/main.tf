resource "azurerm_traffic_manager_profile" "current" {
  name                   = var.profile_name
  resource_group_name    = var.resource_group_name
  traffic_routing_method = var.traffic_routing_method
  profile_status         = var.profile_status
  traffic_view_enabled   = var.traffic_view_enabled
  max_return             = var.max_return


  dns_config {
    relative_name = var.dns_config.relative_name
    ttl           = var.dns_config.ttl
  }

  monitor_config {
    protocol                     = var.monitor_config.protocol
    port                         = var.monitor_config.port
    path                         = var.monitor_config.path
    interval_in_seconds          = var.monitor_config.interval_in_seconds
    timeout_in_seconds           = var.monitor_config.timeout_in_seconds
    tolerated_number_of_failures = var.monitor_config.tolerated_number_of_failures
    expected_status_code_ranges  = var.monitor_config.expected_status_code_ranges
    dynamic "custom_header" {
      for_each = var.monitor_config.custom_header != null ? [var.monitor_config.custom_header] : []
      content {
        name  = var.monitor_config.custom_header.name
        value = var.monitor_config.custom_header.value
      }
    }
  }

  tags = var.tags

  lifecycle {
    #prevent_destroy = true
  }
}

resource "azurerm_traffic_manager_external_endpoint" "current" {
  for_each          = var.external_endpoint_name == null ? {} : var.external_endpoint_name
  name              = each.value.name
  profile_id        = local.profile_id
  target            = each.value.target
  weight            = each.value.weight
  priority          = each.value.priority
  endpoint_location = each.value.endpoint_location
  enabled           = each.value.enabled
  geo_mappings      = each.value.geo_mappings
  dynamic "custom_header" {
    for_each = each.value.custom_header != null ? [each.value.custom_header] : []
    content {
      name  = each.value.custom_header.name
      value = each.value.custom_header.value
    }
  }
  dynamic "subnet" {
    for_each = each.value.subnet != null ? [each.value.subnet] : []
    content {
      first = each.value.subnet.first
      last  = each.value.subnet.last
      scope = each.value.subnet.scope
    }
  }
  depends_on = [azurerm_traffic_manager_profile.current]

  lifecycle {
    #prevent_destroy = true
  }
}

