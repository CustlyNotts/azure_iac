resource "azurerm_network_security_group" "current" {
  name                = var.network_security_group_name
  location            = data.azurerm_resource_group.current.location
  resource_group_name = var.network_security_group_resource_group_name
  tags                = coalesce(var.tags, data.azurerm_resource_group.current.tags)

  lifecycle {
    prevent_destroy = true
  }
}

resource "azurerm_network_security_rule" "current" {
  for_each                                   = var.nsg_rules
  name                                       = each.key
  description                                = each.value.description
  resource_group_name                        = var.network_security_group_resource_group_name
  network_security_group_name                = azurerm_network_security_group.current.name
  priority                                   = each.value.priority
  direction                                  = each.value.direction
  access                                     = each.value.access
  protocol                                   = each.value.protocol
  source_port_range                          = each.value.source_port_range
  destination_port_range                     = each.value.destination_port_range
  destination_port_ranges                    = each.value.destination_port_ranges
  source_address_prefix                      = each.value.source_address_prefix
  source_address_prefixes                    = each.value.source_address_prefixes
  destination_address_prefix                 = each.value.destination_address_prefix
  destination_address_prefixes               = each.value.destination_address_prefixes
  source_application_security_group_ids      = each.value.source_application_security_group_ids
  destination_application_security_group_ids = each.value.destination_application_security_group_ids

  lifecycle {
    prevent_destroy = true
  }
}
