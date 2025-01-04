data "azurerm_servicebus_namespace" "sb" {
  name                = var.name
  resource_group_name = var.resource_group_name
}