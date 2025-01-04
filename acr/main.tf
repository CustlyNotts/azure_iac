resource "azurerm_container_registry" "current" {
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = data.azurerm_resource_group.current.location
  sku                 = var.sku
  tags                = data.azurerm_resource_group.current.tags

  lifecycle {
    prevent_destroy = true
  }
}