resource "azurerm_public_ip" "current" {
  name                    = var.name
  resource_group_name     = coalesce(var.resource_group, data.azurerm_resource_group.current.name)
  location                = coalesce(var.location, data.azurerm_resource_group.current.location)
  allocation_method       = var.allocation_method
  idle_timeout_in_minutes = var.idle_timeout_in_minutes
  sku                     = var.sku
  sku_tier                = var.sku_tier
  zones                   = var.zones
  domain_name_label       = var.domain_name_label
  tags                    = var.tags

  lifecycle {
    prevent_destroy = true
  }
}
