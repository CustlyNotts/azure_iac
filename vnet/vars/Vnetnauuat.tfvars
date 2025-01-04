subscription_id     = <subscription_id>
resource_group_name = "Rgnauuat"
name                = "Vnetnauuat"
address_space       = ["10.236.12.0/22"]
subnets = [
  {
    name              = "aks-nau-uat-cluster"
    address_prefixes  = ["10.236.12.0/23"]
    service_endpoints = ["Microsoft.KeyVault", "Microsoft.Sql", "Microsoft.Storage"]
    route_table_id    = "/subscriptions/ededa550-54e3-4ac7-a6b0-bca51f3c1495/resourceGroups/Rgnaudev/providers/Microsoft.Network/routeTables/Route-Nau-New"
  },
  {
    name              = "aks-nau-uat-cluster-lb"
    address_prefixes  = ["10.236.14.0/25"]
    service_endpoints = ["Microsoft.KeyVault", "Microsoft.Sql", "Microsoft.Storage"]
    route_table_id    = "/subscriptions/ededa550-54e3-4ac7-a6b0-bca51f3c1495/resourceGroups/Rgnaudev/providers/Microsoft.Network/routeTables/Route-Nau-New"
    delegation        = "Microsoft.DBforMySQL/flexibleServers"
  }
]
peerings = {
  vnetnau = {
    remote_virtual_network_id = "/subscriptions/ededa550-54e3-4ac7-a6b0-bca51f3c1495/resourceGroups/Rgvnet/providers/Microsoft.Network/virtualNetworks/vnetnau"
  }
}