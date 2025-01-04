data "azurerm_virtual_machine" "vm" {
  name                = var.name
  resource_group_name = var.resource_group_name
}

# data "azurerm_monitor_action_group" "action_group" {
#   name                = var.action_group_resource_group_name
#   resource_group_name = var.action_group_resource_group_name
# }