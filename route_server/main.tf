resource "azurerm_public_ip" "current" {
  count               = var.public_ip_enabled == true ? 1 : 0
  name                = lower(coalesce(var.public_ip_name, "${var.name}-ip"))
  location            = var.location
  resource_group_name = var.resource_group_name
  allocation_method   = var.allocation_method
  sku                 = var.publicip_sku.sku
  sku_tier            = var.publicip_sku.tier
  zones               = var.zones
  tags                = coalesce(var.public_ip_tags, var.tags)
  ip_tags             = var.ip_tags

  lifecycle {
    prevent_destroy = true
  }
}


resource "azurerm_route_server" "current" {
  name                             = var.name
  resource_group_name              = data.azurerm_resource_group.current.name
  location                         = data.azurerm_resource_group.current.location
  sku                              = var.sku
  public_ip_address_id             = data.azurerm_public_ip.current.id
  subnet_id                        = data.azurerm_subnet.current.id
  branch_to_branch_traffic_enabled = var.branch_to_branch_traffic_enabled
  tags                             = var.tags

  lifecycle {
    prevent_destroy = true
  }
}


resource "azurerm_route_server_bgp_connection" "current" {
  for_each        = var.route_server_bgp_connection != null ? var.route_server_bgp_connection : {}
  name            = each.value.connection_name
  route_server_id = azurerm_route_server.current.id
  peer_asn        = each.value.peer_asn
  peer_ip         = each.value.peer_ip
}
