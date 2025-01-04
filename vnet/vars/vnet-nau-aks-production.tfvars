subscription_id     = <subscription_id>
resource_group_name = "Rg-nau-production"
name                = "vnet-nau-aks-production"
address_space       = ["10.236.32.0/20"]
subnets = [
  {
    name              = "snet-aks-production"
    address_prefixes  = ["10.236.32.0/20"]
    service_endpoints = ["Microsoft.Sql", "Microsoft.Storage"]
    route_table_id    = "/subscriptions/ededa550-54e3-4ac7-a6b0-bca51f3c1495/resourceGroups/Rg-nau-production/providers/Microsoft.Network/routeTables/Route-nau-production"
  }
]

peerings = {
  DPWGLWVDNAU = {
    remote_virtual_network_id = "/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rg-wvd-global/providers/Microsoft.Network/virtualNetworks/VnetWVDall"
  }
}
