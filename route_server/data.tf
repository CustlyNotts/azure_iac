data "azurerm_resource_group" "current" {
  name = var.resource_group_name
}

data "azurerm_public_ip" "current" {
  name                = lower(var.public_ip_name)
  resource_group_name = data.azurerm_resource_group.current.name
  depends_on          = [azurerm_public_ip.current]
}

data "azurerm_subnet" "current" {
  name                 = var.subnet
  virtual_network_name = var.virtual_network_name
  resource_group_name  = data.azurerm_resource_group.current.name
}
