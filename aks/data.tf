data "azurerm_resource_group" "current" {
  name = var.resource_group
}

data "azurerm_virtual_network" "current" {
  name                = var.virtual_network
  resource_group_name = var.virtual_network_resource_group
}

data "azurerm_subnet" "vnet" {
  name                 = var.subnet
  virtual_network_name = data.azurerm_virtual_network.current.name
  resource_group_name  = data.azurerm_virtual_network.current.resource_group_name
}

data "azurerm_subnet" "pods" {
  count                = var.pod_subnet_enabled ? 1 : 0
  name                 = var.pod_subnet
  virtual_network_name = data.azurerm_virtual_network.current.name
  resource_group_name  = data.azurerm_virtual_network.current.resource_group_name
}

data "azurerm_container_registry" "current" {
  for_each            = var.container_registries
  name                = each.key
  resource_group_name = each.value.resource_group
}
