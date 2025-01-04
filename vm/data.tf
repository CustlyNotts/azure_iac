data "azurerm_resource_group" "current" {
  name = var.resource_group_name
}

data "azurerm_virtual_network" "current" {
  name                = var.virtual_network_name
  resource_group_name = var.virtual_network_resource_group_name
}

data "azurerm_subnet" "current" {
  name                 = var.subnet_name
  virtual_network_name = data.azurerm_virtual_network.current.name
  resource_group_name  = data.azurerm_virtual_network.current.resource_group_name
}
