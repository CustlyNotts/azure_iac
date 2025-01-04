resource "azurerm_key_vault" "current" {
  name                            = var.name
  location                        = coalesce(var.location, data.azurerm_resource_group.current.location)
  resource_group_name             = var.resource_group_name
  tenant_id                       = data.azurerm_client_config.current.tenant_id
  purge_protection_enabled        = var.purge_protection_enabled
  enable_rbac_authorization       = var.enable_rbac_authorization
  enabled_for_deployment          = var.enabled_for_deployment
  enabled_for_disk_encryption     = var.enabled_for_disk_encryption
  enabled_for_template_deployment = var.enabled_for_template_deployment
  sku_name                        = var.sku_name
  public_network_access_enabled   = var.public_network_access_enabled
  soft_delete_retention_days      = var.soft_delete_retention_days
  dynamic "access_policy" {
    for_each = var.access_policies
    content {
      tenant_id               = data.azurerm_client_config.current.tenant_id
      object_id               = access_policy.value.object_id
      key_permissions         = access_policy.value.key_permissions
      secret_permissions      = access_policy.value.secret_permissions
      certificate_permissions = access_policy.value.certificate_permissions
      storage_permissions     = access_policy.value.storage_permissions
    }
  }
  tags = coalesce(var.tags, data.azurerm_resource_group.current.tags)

  lifecycle {
    #prevent_destroy = true
  }
}


resource "azurerm_private_endpoint" "pe" {
  count                         = var.counter
  name                          = var.use_existing_pe ? var.private_endpoint_name[count.index] : "pe-${var.name}-${count.index}"
  location                      = data.azurerm_resource_group.current.location
  resource_group_name           = var.pe_resource_group_name
  custom_network_interface_name = var.custom_network_interface_name
  subnet_id                     = var.subnet_id[count.index]
  tags                          = data.azurerm_resource_group.current.tags

  private_service_connection {
    name                           = var.use_existing_dns ? var.private_service_connection_name[count.index] : "psc-${var.name}-${count.index}"
    private_connection_resource_id = azurerm_key_vault.current.id
    subresource_names              = ["vault"]
    is_manual_connection           = var.manual_connection # Defaults to false
  }


  private_dns_zone_group {
    name                 = var.use_existing_dns ? var.private_dns_zone_group_name[count.index] : "pdz-group-${var.name}-${count.index}"
    private_dns_zone_ids = var.use_existing_dns ? var.private_dns_zone_ids : [azurerm_private_dns_zone.pdz[count.index].id] # [azurerm_private_dns_zone.example.id]
  }

  lifecycle {
    #prevent_destroy = true
  }
}

resource "azurerm_private_dns_zone" "pdz" {
  count               = var.counter
  name                = var.use_existing_dns ? var.pdz_name[count.index] : "${var.name}-${count.index}-pdz.privatelink.vaultcore.azure.net"
  resource_group_name = var.pdz_resource_group_name[count.index]

  lifecycle {
    #prevent_destroy = true
  }
}

resource "azurerm_private_dns_zone_virtual_network_link" "pdz-link" {
  count                 = var.vlink_counter
  name                  = var.use_existing_dns ? var.pdz_link_name[count.index] : "pdz-link-${var.name}-${count.index}"
  resource_group_name   = var.vlink_resource_group_name[count.index]
  private_dns_zone_name = var.use_existing_dns ? var.linked_pdz_name[count.index] : azurerm_private_dns_zone.pdz[count.index].name
  virtual_network_id    = var.virtual_network_id[count.index]

  lifecycle {
    # prevent_destroy = true
  }
}