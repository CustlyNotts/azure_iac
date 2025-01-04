subscription_id     = <subscription_id>
resource_group_name = "rgnauavd"
name                = "vnet-nau-avd"
address_space       = ["10.236.250.0/24"]
dns_servers         = ["10.254.9.4", "10.254.9.6"]
create_default_peerings = false
subnets = [
  {
    name              = "subnauavd"
    address_prefixes  = ["10.236.250.0/24"]
    service_endpoints = ["Microsoft.KeyVault", "Microsoft.Storage"]
    route_table_id    = "/subscriptions/ededa550-54e3-4ac7-a6b0-bca51f3c1495/resourceGroups/rgnauavd/providers/Microsoft.Network/routeTables/route-nau-avd"
  }
]

peerings = {
  Vnetpeering-NAU-Sechubuae = {
    remote_virtual_network_id = "/subscriptions/cf524703-9d5e-4aa2-bbe9-975fe083f66a/resourceGroups/rgnwsechub/providers/Microsoft.Network/virtualNetworks/vnetsechub"
  }
  Peer-UAE-vnet-cpperimeter-81-prod = {
      remote_virtual_network_id = "/subscriptions/cf524703-9d5e-4aa2-bbe9-975fe083f66a/resourceGroups/RG-UAE-CP-Perimeter81/providers/Microsoft.Network/virtualNetworks/vnet-uae-cpperimeter81-prod"
  }
}
