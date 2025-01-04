resource "azurerm_private_link_service" "current" {
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location
  tags                = var.tags

  auto_approval_subscription_ids              = var.auto_approval_subscription_ids
  visibility_subscription_ids                 = var.visibility_subscription_ids
  fqdns                                       = var.fqdns
  load_balancer_frontend_ip_configuration_ids = [var.load_balancer_frontend_ip_configuration_ids]

  #alias = var.alias

  dynamic "nat_ip_configuration" {
    for_each = var.nat_ip_configurations

    content {
      name = nat_ip_configuration.value.name
      #private_ip_address         = nat_ip_configuration.value.private_ip_address
      private_ip_address_version = nat_ip_configuration.value.private_ip_address_version
      subnet_id                  = nat_ip_configuration.value.subnet_id
      primary                    = nat_ip_configuration.value.primary
    }
  }

  lifecycle {
    prevent_destroy = true
  }
}