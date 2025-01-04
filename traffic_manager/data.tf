data "azurerm_resource_group" "current" {
  name = var.resource_group_name
}
data "azurerm_traffic_manager_profile" "current" {
  name                = var.profile_name
  resource_group_name = var.resource_group_name
  depends_on          = [azurerm_traffic_manager_profile.current]
}
