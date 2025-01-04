data "azurerm_resource_group" "current" {
  name = var.resource_group_name
}
data "azurerm_private_dns_zone" "current" {
  count               = var.private_dns_zone_enabled ? 1 : 0
  name                = var.private_dns_zone_name[count.index]
  resource_group_name = var.private_dns_zone_resource_group_name
}
