resource "azurerm_private_endpoint" "pe" {
  name                          = var.private_endpoint_name
  location                      = var.location
  resource_group_name           = var.pe_resource_group_name
  subnet_id                     = var.subnet_id
  custom_network_interface_name = var.custom_network_interface_name
  tags                          = var.tags

  dynamic "private_service_connection" {
    for_each = var.manual_connection ? [1] : [1]
    content {
      name                           = var.private_service_connection_name
      private_connection_resource_id = var.sub_resource_id
      subresource_names              = var.sub_resource_names
      is_manual_connection           = var.manual_connection # Defaults to false
    }
  }

  dynamic "private_dns_zone_group" {
    for_each = var.pdz_group ? [1] : []
    content {
      name                 = var.private_dns_zone_group_name
      private_dns_zone_ids = var.use_existing_dns ? var.private_dns_zone_ids : [azurerm_private_dns_zone.pdz[0].id]
    }
  }

  dynamic "ip_configuration" {
    for_each = var.ip_configuration != null ? [1] : []
    content {
      name               = var.ip_configuration.name
      private_ip_address = var.ip_configuration.private_ip_address
      subresource_name   = var.ip_configuration.subresource_name
      member_name        = var.ip_configuration.member_name
    }
  }

  lifecycle {
    prevent_destroy = false
    ignore_changes = [
      tags
    ]
  }
}

resource "azurerm_private_dns_zone" "pdz" {
  #count               = var.pdz_counter
  count               = var.use_existing_dns ? 0 : var.pdz_counter # Defaults to 1
  name                = var.pdz_name[count.index]
  resource_group_name = var.pdz_resource_group_name[count.index]
  tags                = var.private_dns_tags

  lifecycle {
    prevent_destroy = false
    ignore_changes = [
      tags
    ]
  }
}

resource "azurerm_private_dns_zone_virtual_network_link" "pdz-link" {
  count                 = var.pdz_counter == 0 ? 0 : var.vlink_counter
  name                  = var.pdz_link_name[count.index]
  resource_group_name   = var.vlink_resource_group_name[count.index]
  private_dns_zone_name = var.use_existing_dns ? var.linked_pdz_name[count.index] : azurerm_private_dns_zone.pdz[0].name
  virtual_network_id    = var.virtual_network_id[count.index]
  tags                  = var.vlink_tags

  lifecycle {
    prevent_destroy = false
    ignore_changes = [
      tags
    ]
  }
}
