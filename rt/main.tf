resource "azurerm_route_table" "current" {
  name                          = var.name
  location                      = data.azurerm_resource_group.current.location
  resource_group_name           = var.resource_group_name
  bgp_route_propagation_enabled = var.disable_bgp_route_propagation

  dynamic "route" {
    for_each = var.route_default == false ? var.routes : merge(var.routes, var.route_table.route_table.default_routes)
    content {
      name                   = route.key
      address_prefix         = route.value.address_prefix
      next_hop_type          = route.value.next_hop_type
      next_hop_in_ip_address = route.value.next_hop_in_ip_address
    }
  }
  tags = var.tags

  lifecycle {
    prevent_destroy = true
  }
}
