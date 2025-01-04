data "azurerm_resource_group" "current" {
  name = var.resource_group_name
}
data "azurerm_virtual_network_gateway" "current" {
  name                = var.name
  resource_group_name = data.azurerm_resource_group.current.name
}

data "azurerm_public_ip" "current" {
  name                = var.public_ip_name
  resource_group_name = data.azurerm_resource_group.current.name
}

data "azurerm_subnet" "current" {
  name                 = var.subnet
  virtual_network_name = var.virtual_network_name
  resource_group_name  = data.azurerm_resource_group.current.name
}

data "azurerm_express_route_circuit" "current" {
  count               = var.express_route_name == null ? 0 : 1
  name                = var.express_route_name
  resource_group_name = var.express_route_rg
}
