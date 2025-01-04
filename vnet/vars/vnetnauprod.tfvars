subscription_id     = <subscription_id>
resource_group_name = "Rgnauprod"
name                = "vnetnauprod"
address_space       = ["10.236.16.0/22"]
#dns_servers         = ["10.254.9.4", "10.254.9.6"]
create_default_peerings = false
subnets = [
  {
    name              = "nau-prod-shared"
    address_prefixes  = ["10.236.17.0/24"]
    service_endpoints = ["Microsoft.Sql", "Microsoft.Storage"]
    route_table_id    = "/subscriptions/ededa550-54e3-4ac7-a6b0-bca51f3c1495/resourceGroups/Rgnauprod/providers/Microsoft.Network/routeTables/Routenauprod"
  },
  {
    name              = "aks-nau-prod-cluster"
    address_prefixes  = ["10.236.16.0/24"]
    service_endpoints = ["Microsoft.Sql", "Microsoft.Storage"]
    route_table_id    = "/subscriptions/ededa550-54e3-4ac7-a6b0-bca51f3c1495/resourceGroups/Rgnauprod/providers/Microsoft.Network/routeTables/Routenauprod"
  },
  {
    name              = "snet-mysql-prod"
    address_prefixes  = ["10.236.18.0/24"]
    service_endpoints = ["Microsoft.Storage"]
    delegation        = "Microsoft.DBforMySQL/flexibleServers"
    route_table_id    = "/subscriptions/ededa550-54e3-4ac7-a6b0-bca51f3c1495/resourceGroups/Rgnauprod/providers/Microsoft.Network/routeTables/Routenauprod"
  }
]

peerings = {
  DPWGLBSECHUB = {
    remote_virtual_network_id = "/subscriptions/cf524703-9d5e-4aa2-bbe9-975fe083f66a/resourceGroups/rgnwsechub/providers/Microsoft.Network/virtualNetworks/vnetsechub"
  }
  vnetnau = {
    remote_virtual_network_id = "/subscriptions/ededa550-54e3-4ac7-a6b0-bca51f3c1495/resourceGroups/Rgvnet/providers/Microsoft.Network/virtualNetworks/vnetnau"
  }
  Peer-UAE-vnet-cpperimeter-81-prod = {
    remote_virtual_network_id = "/subscriptions/cf524703-9d5e-4aa2-bbe9-975fe083f66a/resourceGroups/RG-UAE-CP-Perimeter81/providers/Microsoft.Network/virtualNetworks/vnet-uae-cpperimeter81-prod"
  }
  DPWGLWVDNAU = {
      remote_virtual_network_id = "/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rg-wvd-global/providers/Microsoft.Network/virtualNetworks/VnetWVDall"
  }
  Peer-UAE-MetallicBackup = {
      remote_virtual_network_id = "/subscriptions/0f1aad42-836d-40a7-bc3d-13587ecdb839/resourceGroups/rg-metallicgw_uaenorth-prod/providers/Microsoft.Network/virtualNetworks/vnet-metallicgw_uaenorth-prod"
  }
}
