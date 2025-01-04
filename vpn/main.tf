resource "azurerm_public_ip" "current" {
  count               = var.public_ip_enabled == true ? 1 : 0
  name                = coalesce(var.public_ip_name, "${var.name}-ip")
  location            = var.location
  resource_group_name = var.resource_group_name
  allocation_method   = var.allocation_method
  sku                 = var.publicip_sku.sku
  sku_tier            = var.publicip_sku.tier
  zones               = var.zones
  tags                = coalesce(var.public_ip_tags, var.tags)
  ip_tags             = var.ip_tags

  lifecycle {
    prevent_destroy = true
  }
}


resource "azurerm_virtual_network_gateway" "current" {
  name                             = var.name
  location                         = var.location
  resource_group_name              = data.azurerm_resource_group.current.name
  type                             = var.type
  vpn_type                         = var.vpn_type
  active_active                    = var.active_active
  enable_bgp                       = var.enable_bgp
  default_local_network_gateway_id = var.default_local_network_gateway_id
  private_ip_address_enabled       = var.private_ip_address_enabled
  edge_zone                        = var.edge_zone
  generation                       = var.generation
  sku                              = var.sku
  tags                             = var.tags
  dynamic "ip_configuration" {
    for_each = var.ip_configuration != null ? [var.ip_configuration] : []
    content {
      name                          = ip_configuration.value.name
      private_ip_address_allocation = ip_configuration.value.private_ip_address_allocation
      public_ip_address_id          = local.public_ip_address_id
      subnet_id                     = local.subnet_id
    }
  }
  dynamic "bgp_settings" {
    for_each = var.bgp_settings != null ? [var.bgp_settings] : []
    content {
      asn = bgp_settings.value.asn
      dynamic "peering_addresses" {
        for_each = bgp_settings.value.peering_addresses != null ? [bgp_settings.value.peering_addresses] : []
        content {
          ip_configuration_name = peering_addresses.value.ip_configuration_name
          apipa_addresses       = peering_addresses.value.apipa_addresses
        }
      }
      peer_weight = bgp_settings.value.peer_weight
    }
  }
  dynamic "custom_route" {
    for_each = var.custom_route != null ? [var.custom_route] : []
    content {
      address_prefixes = custom_route.value.address_prefixes
    }
  }
  dynamic "timeouts" {
    for_each = var.timeouts != null ? [var.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
  dynamic "vpn_client_configuration" {
    for_each = var.vpn_client_configuration != null ? [var.vpn_client_configuration] : []
    content {
      aad_audience          = vpn_client_configuration.value.aad_audience
      aad_issuer            = vpn_client_configuration.value.aad_issuer
      aad_tenant            = vpn_client_configuration.value.aad_tenant
      address_space         = vpn_client_configuration.value.address_space
      radius_server_address = vpn_client_configuration.value.radius_server_address
      radius_server_secret  = vpn_client_configuration.value.radius_server_secret
      vpn_client_protocols  = vpn_client_configuration.value.vpn_client_protocols
      dynamic "revoked_certificate" {
        for_each = vpn_client_configuration.value.revoke_certificate != null ? [vpn_client_configuration.value.revoke_certificate] : []
        content {
          name       = revoked_certificate.value.name
          thumbprint = revoked_certificate.value.thumbprint
        }
      }
      dynamic "root_certificate" {
        for_each = vpn_client_configuration.value.root_certificate != null ? [vpn_client_configuration.value.root_certificate] : []
        content {
          name             = root_certificate.value.name
          public_cert_data = root_certificate.value.public_cert_data
        }
      }
    }
  }
  lifecycle {
    prevent_destroy = true
  }
}

resource "azurerm_virtual_network_gateway_connection" "current" {
  for_each                           = var.connection_list == null ? {} : var.connection_list
  name                               = each.value.connection_name
  resource_group_name                = data.azurerm_resource_group.current.name
  location                           = var.location
  type                               = each.value.connection_type
  virtual_network_gateway_id         = data.azurerm_virtual_network_gateway.current.id
  authorization_key                  = each.value.authorization_key
  connection_protocol                = each.value.connection_protocol
  dpd_timeout_seconds                = each.value.dpd_timeout_seconds
  enable_bgp                         = each.value.connection_enable_bgp
  express_route_circuit_id           = each.value.express_route_circuit_id == null ? null : local.express_route_circuit_id
  express_route_gateway_bypass       = each.value.express_route_gateway_bypass
  local_azure_ip_address_enabled     = each.value.local_azure_ip_address_enabled
  local_network_gateway_id           = var.local_gateway_connections == null ? null : azurerm_local_network_gateway.current[each.key].id
  peer_virtual_network_gateway_id    = each.value.peer_virtual_network_gateway_id
  routing_weight                     = each.value.routing_weight
  shared_key                         = each.value.shared_key
  tags                               = coalesce(each.value.connection_tags, var.tags)
  use_policy_based_traffic_selectors = each.value.use_policy_based_traffic_selectors
  dynamic "ipsec_policy" {
    for_each = each.value.ipsec_policy != null ? [each.value.ipsec_policy] : []
    content {
      dh_group         = each.value.ipsec_policy.dh_group
      ike_encryption   = each.value.ipsec_policy.ike_encryption
      ike_integrity    = each.value.ipsec_policy.ike_integrity
      ipsec_encryption = each.value.ipsec_policy.ipsec_encryption
      ipsec_integrity  = each.value.ipsec_policy.ipsec_integrity
      pfs_group        = each.value.ipsec_policy.pfs_group
      sa_datasize      = each.value.ipsec_policy.sa_datasize
      sa_lifetime      = each.value.ipsec_policy.sa_lifetime
    }
  }
  dynamic "timeouts" {
    for_each = each.value.connection_timeouts != null ? [each.value.connection_timeouts] : []
    content {
      create = each.value.timeouts.create
      delete = each.value.timeouts.delete
      read   = each.value.timeouts.read
      update = each.value.timeouts.update
    }
  }

  dynamic "traffic_selector_policy" {
    for_each = each.value.traffic_selector_policy != null ? [each.value.traffic_selector_policy] : []
    content {
      local_address_cidrs  = each.value.traffic_selector_policy.local_address_cidrs
      remote_address_cidrs = each.value.traffic_selector_policy.remote_address_cidrs
    }
  }

  depends_on = [azurerm_local_network_gateway.current]

  lifecycle {
    prevent_destroy = true
  }
}

resource "azurerm_local_network_gateway" "current" {
  for_each            = var.local_gateway_connections == null ? {} : var.local_gateway_connections
  name                = each.value.localgateway_name
  resource_group_name = data.azurerm_resource_group.current.name
  location            = var.location
  gateway_address     = each.value.gateway_address
  address_space       = each.value.address_space
  gateway_fqdn        = each.value.gateway_fqdn
  tags                = coalesce(each.value.localgw_tags, var.tags)
  dynamic "bgp_settings" {
    for_each = each.value.local_bgp_settings != null ? [each.value.local_bgp_settings] : []
    content {
      asn                 = bgp_settings.value.asn
      bgp_peering_address = bgp_settings.value.bgp_peering_address
      peer_weight         = bgp_settings.value.peer_weight
    }
  }

  lifecycle {
    prevent_destroy = true
  }
}


resource "azurerm_virtual_network_gateway_nat_rule" "current" {
  count                      = var.nat_enabled == true ? 1 : 0
  name                       = var.nat_name
  resource_group_name        = data.azurerm_resource_group.current.name
  virtual_network_gateway_id = data.azurerm_virtual_network_gateway.current.id
  mode                       = var.mode
  type                       = var.nat_type
  ip_configuration_id        = var.ip_configuration_id
  dynamic "internal_mapping" {
    for_each = var.internal_mapping != null ? [var.internal_mapping] : []
    content {
      address_space = internal_mapping.value.address_space
      port_range    = internal_mapping.value.port_range
    }
  }
  dynamic "external_mapping" {
    for_each = var.external_mapping != null ? [var.external_mapping] : []
    content {
      address_space = external_mapping.value.address_space
      port_range    = external_mapping.value.port_range
    }
  }
  depends_on = [azurerm_virtual_network_gateway_connection.current]

  lifecycle {
    prevent_destroy = true
  }
}





