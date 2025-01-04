subscription_id     = <subscription_id>
resource_group_name = "RgOfbizuat"
name                = "Vnetofbizuat"
address_space       = ["10.236.20.0/25"]
#dns_servers         = ["10.254.9.4", "10.254.9.6"]
create_default_peerings = false
subnets = [
  {
    name              = "UAT"
    address_prefixes  = ["10.236.20.0/26"]
    service_endpoints = ["Microsoft.KeyVault", "Microsoft.Storage", "Microsoft.Sql"]
    route_table_id    = "/subscriptions/ededa550-54e3-4ac7-a6b0-bca51f3c1495/resourceGroups/Rgnaudev/providers/Microsoft.Network/routeTables/Route-Nau-New"
    network_security_group_id = "/subscriptions/ededa550-54e3-4ac7-a6b0-bca51f3c1495/resourceGroups/RgOfbizuat/providers/Microsoft.Network/networkSecurityGroups/Nsgofbiz"
  }
]

peerings = {
  Vnetofbizauat = {
    remote_virtual_network_id = "/subscriptions/cf524703-9d5e-4aa2-bbe9-975fe083f66a/resourceGroups/rgnwsechub/providers/Microsoft.Network/virtualNetworks/vnetsechub"
  }
  Peer-UAE-vnet-cpperimeter-81-prod = {
      remote_virtual_network_id = "/subscriptions/cf524703-9d5e-4aa2-bbe9-975fe083f66a/resourceGroups/RG-UAE-CP-Perimeter81/providers/Microsoft.Network/virtualNetworks/vnet-uae-cpperimeter81-prod"
  }
  vnetnau-vnetofbiz = {
      remote_virtual_network_id = "/subscriptions/cf524703-9d5e-4aa2-bbe9-975fe083f66a/resourceGroups/RG-UAE-CP-Perimeter81/providers/Microsoft.Network/virtualNetworks/vnet-uae-cpperimeter81-prod"
  }
}
