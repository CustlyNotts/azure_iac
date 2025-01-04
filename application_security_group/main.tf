resource "azurerm_application_security_group" "asg" {
  name                = var.name
  location            = coalesce(var.location, data.azurerm_resource_group.current.location)
  resource_group_name = data.azurerm_resource_group.current.name
  tags                = var.tags

  lifecycle {
    prevent_destroy = true
  }
}