resource "azurerm_public_ip" "pip" {
  count               = var.create_public_ip ? 1 : 0
  allocation_method   = var.allocation_method
  location            = coalesce(var.location, data.azurerm_resource_group.current.location)
  name                = var.public_ip_name
  resource_group_name = var.resource_group_name
  zones               = var.public_ip_zones
  sku                 = var.pip_sku

  domain_name_label = var.public_ip_domain_name_label
  reverse_fqdn      = var.public_ip_reverse_fqdn

  tags = coalesce(var.tags, data.azurerm_resource_group.current.tags)

  lifecycle {
    prevent_destroy = true
  }
}

resource "azurerm_nat_gateway" "natgw" {
  location                = coalesce(var.location, data.azurerm_resource_group.current.location)
  name                    = var.nat_gateway_name
  resource_group_name     = var.resource_group_name
  sku_name                = var.nat_gw_sku
  idle_timeout_in_minutes = var.nat_gateway_idle_timeout

  tags = coalesce(var.tags, data.azurerm_resource_group.current.tags)

  lifecycle {
    prevent_destroy = true
  }
}

resource "azurerm_nat_gateway_public_ip_association" "pip_assoc" {
  count                = var.create_public_ip ? 1 : 0
  nat_gateway_id       = azurerm_nat_gateway.natgw.id
  public_ip_address_id = azurerm_public_ip.pip[0].id
}

resource "azurerm_nat_gateway_public_ip_association" "pip_assoc_custom_ips" {
  for_each             = toset(var.public_ip_ids)
  nat_gateway_id       = azurerm_nat_gateway.natgw.id
  public_ip_address_id = each.value
}

resource "azurerm_subnet_nat_gateway_association" "subnet_assoc" {
  for_each       = toset(var.subnet_ids)
  nat_gateway_id = azurerm_nat_gateway.natgw.id
  subnet_id      = each.value
}