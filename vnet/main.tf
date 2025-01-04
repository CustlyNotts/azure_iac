resource "azureipam_reservation" "main" {
  count = var.use_ipam ? 1 : 0
  space = var.vnet_exist ? "DPWorldGlobal" : (contains(keys(var.ipam_block), coalesce(var.location, data.azurerm_resource_group.current.location)) ? "DPWorldRegionalBlocks" : "DPWorldGlobal")
  block = var.vnet_exist ? "ClassA" : (lookup(var.ipam_block, coalesce(var.location, data.azurerm_resource_group.current.location), "ClassA"))
  size  = var.vnet_mask
}
resource "azurerm_virtual_network" "current" {
  name                = var.name
  address_space       = var.use_ipam ? [azureipam_reservation.main[0].cidr] : var.address_space
  location            = coalesce(var.location, data.azurerm_resource_group.current.location)
  resource_group_name = var.resource_group_name
  tags                = var.use_ipam ? merge(data.azurerm_resource_group.current.tags, azureipam_reservation.main[0].tags, var.tags) : merge(data.azurerm_resource_group.current.tags, var.tags)
  dns_servers         = var.dns_servers
  bgp_community       = var.bgp_community
  dynamic "ddos_protection_plan" {
    for_each = var.ddos_protection_plan_id != null ? [""] : []
    content {
      id     = var.ddos_protection_plan_id
      enable = true
    }
  }

  lifecycle {
    ##prevent_destroy = true
  }
}

resource "azurerm_subnet" "current" {
  for_each                                      = { for subnet in var.subnets : subnet.name => subnet }
  name                                          = each.value.name
  resource_group_name                           = azurerm_virtual_network.current.resource_group_name
  virtual_network_name                          = azurerm_virtual_network.current.name
  address_prefixes                              = var.use_ipam ? (contains(local.network_objs[*].snet_mask, 0) ? [azureipam_reservation.main[0].cidr] : [local.addrs_by_name[each.value.name]]) : each.value.address_prefixes
  service_endpoints                             = each.value.service_endpoints
  private_endpoint_network_policies             = each.value.private_endpoint_network_policies_enabled
  private_link_service_network_policies_enabled = each.value.private_link_service_network_policies_enabled
  dynamic "delegation" {
    for_each = lookup(each.value, "delegation", null) != null ? [""] : []
    content {
      name = each.value.delegation
      service_delegation {
        name    = each.value.delegation
        actions = formatlist("Microsoft.Network/%s", local.service_delegation_actions[each.value.delegation])
      }
    }
  }
  lifecycle {
    ignore_changes = [
      delegation["Microsoft.ContainerService.managedClusters"]
    ]
    ##prevent_destroy = true
  }
}

###################SecHub Default Route###############################################
resource "azurerm_route_table" "current" {
  for_each                      = var.sechub_enabled && var.route_default ? { for subnet in var.subnets : subnet.name => subnet } : {}
  name                          = "rt-${each.key}"
  location                      = data.azurerm_resource_group.current.location
  resource_group_name           = var.resource_group_name
  bgp_route_propagation_enabled = lookup(var.route_table, each.key, var.route_table["default"]).bgp_route_propagation_enabled
  dynamic "route" {
    for_each = merge(
      lookup(var.route_table, each.key, var.route_table["default"]).default_routes,
      lookup(each.value, "routes", {})
    )
    content {
      name                   = route.key
      address_prefix         = route.value.address_prefix
      next_hop_type          = route.value.next_hop_type
      next_hop_in_ip_address = lookup(route.value, "next_hop_in_ip_address", null)
    }
  }
  tags = var.tags

  lifecycle {
    #prevent_destroy = true
  }
}

resource "azurerm_subnet_route_table_association" "subnet_route_table_associations" {
  for_each       = var.sechub_enabled && var.route_default ? { for subnet in var.subnets : subnet.name => subnet } : {}
  subnet_id      = azurerm_subnet.current[each.key].id
  route_table_id = azurerm_route_table.current[each.key].id
}

######################SecHub Default Route End#############################################
#######################SecHub NSG##########################################################

resource "azurerm_network_security_group" "subnet_nsg" {
  for_each            = var.sechub_enabled ? { for subnet in var.subnets : subnet.name => subnet } : {}
  name                = "nsg-${each.key}"
  location            = data.azurerm_resource_group.current.location
  resource_group_name = var.resource_group_name
  tags                = var.tags

  dynamic "security_rule" {
    for_each = merge(var.nsg_rules, lookup(each.value, "nsg_rules", {}))
    content {
      name                                       = security_rule.key
      description                                = security_rule.value.description
      priority                                   = security_rule.value.priority
      direction                                  = security_rule.value.direction
      access                                     = security_rule.value.access
      protocol                                   = security_rule.value.protocol
      source_port_range                          = security_rule.value.source_port_range
      destination_port_range                     = lookup(security_rule.value, "destination_port_range", null)
      destination_port_ranges                    = lookup(security_rule.value, "destination_port_ranges", null)
      source_address_prefix                      = lookup(security_rule.value, "source_address_prefix", null)
      source_address_prefixes                    = lookup(security_rule.value, "source_address_prefixes", null)
      source_application_security_group_ids      = lookup(security_rule.value, "source_application_security_group_ids", null)
      destination_application_security_group_ids = lookup(security_rule.value, "destination_application_security_group_ids", null)
      destination_address_prefix                 = lookup(security_rule.value, "destination_address_prefix", null)
      destination_address_prefixes               = lookup(security_rule.value, "destination_address_prefixes", null)
    }
  }
}


resource "azurerm_subnet_network_security_group_association" "subnet_nsg_association" {
  for_each                  = var.sechub_enabled ? { for subnet in var.subnets : subnet.name => subnet } : {}
  subnet_id                 = azurerm_subnet.current[each.key].id
  network_security_group_id = azurerm_network_security_group.subnet_nsg[each.key].id
}

#######################SecHub NSG End####################################################


#########################################################################################

resource "azurerm_subnet_nat_gateway_association" "current" {
  for_each       = { for subnet in var.subnets : subnet.name => subnet if lookup(subnet, "nat_gateway_id", null) != null }
  subnet_id      = azurerm_subnet.current[each.value.name].id
  nat_gateway_id = each.value.nat_gateway_id
}



#################### custom #####################
resource "azurerm_subnet_route_table_association" "current" {
  for_each       = var.sechub_enabled == false && var.route_default == false ? { for subnet in var.subnets : subnet.name => subnet if lookup(subnet, "route_table_id", null) != null } : {}
  subnet_id      = azurerm_subnet.current[each.value.name].id
  route_table_id = each.value.route_table_id
}

resource "azurerm_subnet_network_security_group_association" "current" {
  for_each                  = var.sechub_enabled == false ? { for subnet in var.subnets : subnet.name => subnet if lookup(subnet, "network_security_group_id", null) != null } : {}
  subnet_id                 = azurerm_subnet.current[each.value.name].id
  network_security_group_id = each.value.network_security_group_id
}

resource "azurerm_virtual_network_peering" "vnet_infrateam" {
  count                     = azurerm_virtual_network.current.name != "vnet-infrateam" && var.create_default_peerings ? 1 : 0
  name                      = "vnet-infrateam"
  resource_group_name       = azurerm_virtual_network.current.resource_group_name
  virtual_network_name      = azurerm_virtual_network.current.name
  remote_virtual_network_id = "/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rg-infrateam/providers/Microsoft.Network/virtualNetworks/vnet-infrateam"
  allow_forwarded_traffic   = true
}

resource "azurerm_virtual_network_peering" "current" {
  count                     = var.name != "vnet-infrateam" && var.create_default_peerings ? 1 : 0
  provider                  = azurerm.system
  name                      = var.name
  resource_group_name       = "rg-infrateam"
  virtual_network_name      = "vnet-infrateam"
  remote_virtual_network_id = azurerm_virtual_network.current.id
  allow_forwarded_traffic   = true
}

resource "azurerm_virtual_network_peering" "smartssh_local" {
  count                     = var.create_default_peerings ? 1 : 0
  name                      = "Peer-${local.region}-smartssh"
  resource_group_name       = azurerm_virtual_network.current.resource_group_name
  virtual_network_name      = azurerm_virtual_network.current.name
  remote_virtual_network_id = local.smartssh_peering
  allow_forwarded_traffic   = true
  use_remote_gateways       = var.use_remote_gateways
}


resource "azurerm_virtual_network_peering" "smartssh_uae" {
  provider                  = azurerm.SMARTUAE
  count                     = local.region == "UAE" && var.create_default_peerings ? 1 : 0
  name                      = "Peer-${local.region}-${azurerm_virtual_network.current.name}"
  resource_group_name       = local.smartssh_resource_group
  virtual_network_name      = local.smartssh_virtual_network
  remote_virtual_network_id = azurerm_virtual_network.current.id
  allow_forwarded_traffic   = true
  allow_gateway_transit     = true
}

resource "azurerm_virtual_network_peering" "smartssh_eur" {
  count                     = local.region == "EUR" && var.create_default_peerings ? 1 : 0
  provider                  = azurerm.SMARTEUR
  name                      = "Peer-${local.region}-${azurerm_virtual_network.current.name}"
  resource_group_name       = local.smartssh_resource_group
  virtual_network_name      = local.smartssh_virtual_network
  remote_virtual_network_id = azurerm_virtual_network.current.id
  allow_forwarded_traffic   = true
  allow_gateway_transit     = true
}

resource "azurerm_virtual_network_peering" "smartssh_apac" {
  count                     = local.region == "APAC" && var.create_default_peerings ? 1 : 0
  provider                  = azurerm.SMARTAPAC
  name                      = "Peer-${local.region}-${azurerm_virtual_network.current.name}"
  resource_group_name       = local.smartssh_resource_group
  virtual_network_name      = local.smartssh_virtual_network
  remote_virtual_network_id = azurerm_virtual_network.current.id
  allow_forwarded_traffic   = true
  allow_gateway_transit     = true
}

resource "azurerm_virtual_network_peering" "smartssh_amr" {
  count                     = local.region == "AMR" && var.create_default_peerings ? 1 : 0
  provider                  = azurerm.SMARTAMR
  name                      = "Peer-${local.region}-${azurerm_virtual_network.current.name}"
  resource_group_name       = local.smartssh_resource_group
  virtual_network_name      = local.smartssh_virtual_network
  remote_virtual_network_id = azurerm_virtual_network.current.id
  allow_forwarded_traffic   = true
  allow_gateway_transit     = true
}

resource "azurerm_virtual_network_peering" "sechub_local" {
  count                     = var.create_default_peerings ? 1 : 0
  name                      = "Peer-${local.region}-sechub"
  resource_group_name       = azurerm_virtual_network.current.resource_group_name
  virtual_network_name      = azurerm_virtual_network.current.name
  remote_virtual_network_id = local.sechub_peering
  allow_forwarded_traffic   = true
}

resource "azurerm_virtual_network_peering" "sechub_uae" {
  count                     = local.region == "UAE" && var.create_default_peerings ? 1 : 0
  provider                  = azurerm.UAE
  name                      = "Peer-${local.region}-${azurerm_virtual_network.current.name}"
  resource_group_name       = local.sechub_resource_group
  virtual_network_name      = local.sechub_virtual_network
  remote_virtual_network_id = azurerm_virtual_network.current.id
  allow_forwarded_traffic   = true
}

resource "azurerm_virtual_network_peering" "sechub_eur" {
  count                     = local.region == "EUR" && var.create_default_peerings ? 1 : 0
  provider                  = azurerm.EUR
  name                      = "Peer-${local.region}-${azurerm_virtual_network.current.name}"
  resource_group_name       = local.sechub_resource_group
  virtual_network_name      = local.sechub_virtual_network
  remote_virtual_network_id = azurerm_virtual_network.current.id
  allow_forwarded_traffic   = true
}

resource "azurerm_virtual_network_peering" "sechub_apac" {
  count                     = local.region == "APAC" && var.create_default_peerings ? 1 : 0
  provider                  = azurerm.APAC
  name                      = "Peer-${local.region}-${azurerm_virtual_network.current.name}"
  resource_group_name       = local.sechub_resource_group
  virtual_network_name      = local.sechub_virtual_network
  remote_virtual_network_id = azurerm_virtual_network.current.id
  allow_forwarded_traffic   = true
}

resource "azurerm_virtual_network_peering" "sechub_amr" {
  count                     = local.region == "AMR" && var.create_default_peerings ? 1 : 0
  provider                  = azurerm.AMR
  name                      = "Peer-${local.region}-${azurerm_virtual_network.current.name}"
  resource_group_name       = local.sechub_resource_group
  virtual_network_name      = local.sechub_virtual_network
  remote_virtual_network_id = azurerm_virtual_network.current.id
  allow_forwarded_traffic   = true
}

resource "azurerm_virtual_network_peering" "local" {
  for_each                  = var.peerings
  name                      = each.key
  resource_group_name       = azurerm_virtual_network.current.resource_group_name
  virtual_network_name      = azurerm_virtual_network.current.name
  remote_virtual_network_id = each.value.remote_virtual_network_id
  allow_forwarded_traffic   = each.value.allow_forwarded_traffic
  use_remote_gateways       = each.value.use_remote_gateways
  allow_gateway_transit     = each.value.allow_gateway_transit
}
