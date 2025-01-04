resource "azurerm_servicebus_namespace" "current" {
  name                = var.name
  location            = data.azurerm_resource_group.current.location
  resource_group_name = var.resource_group_name
  sku                 = var.sku
  tags                = coalesce(var.tags, data.azurerm_resource_group.current.tags)
  capacity            = var.sku == "Premium" ? var.capacity : 0

  lifecycle {
    prevent_destroy = true
  }
}