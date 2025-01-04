resource "azurerm_private_dns_zone" "pdz" {
  name                = var.name
  resource_group_name = var.resource_group_name
  tags                = var.tags

  lifecycle {
    prevent_destroy = true
  }
}

resource "azurerm_private_dns_zone_virtual_network_link" "pdz-link" {
  count                 = var.vlink_counter
  name                  = var.pdz_link_name[count.index]
  resource_group_name   = var.resource_group_name
  private_dns_zone_name = azurerm_private_dns_zone.pdz.name
  virtual_network_id    = var.virtual_network_id[count.index]
  tags                  = var.vlink_tags

  lifecycle {
    prevent_destroy = true
  }
}
