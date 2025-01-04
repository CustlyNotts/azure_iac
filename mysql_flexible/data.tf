data "azurerm_resource_group" "current" {
  name = var.resource_group_name
}

data "azurerm_private_dns_zone" "current" {
  name                = var.private_dns_zone_name
  resource_group_name = var.private_dns_zone_resource_group_name
}

data "azurerm_client_config" "current" {}
