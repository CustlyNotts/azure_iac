subscription_id     = <subscription_id>
resource_group_name = "rg-nau-uat-dr"
name                = "vnet-nau-uat-dr"
address_space       = ["10.2.200.0/22"]
subnets = [
  {
    name              = "snet-aks-nau-uat-dr"
    address_prefixes  = ["10.2.202.0/23"]
    service_endpoints = ["Microsoft.Sql", "Microsoft.Storage"]
    #route_table_id    = "/subscriptions/ededa550-54e3-4ac7-a6b0-bca51f3c1495/resourceGroups/Rgvnet/providers/Microsoft.Network/routeTables/Routenau"
  },
  {
    name              = "snet-pe-nau-uat-dr"
    address_prefixes  = ["10.2.201.0/27"]
    service_endpoints = ["Microsoft.Sql"]
    #route_table_id    = "/subscriptions/ededa550-54e3-4ac7-a6b0-bca51f3c1495/resourceGroups/Rgvnet/providers/Microsoft.Network/routeTables/Routenau"
  },

]

peerings = {
  DPWGLWVDNAU = {
    remote_virtual_network_id = "/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rg-wvd-global/providers/Microsoft.Network/virtualNetworks/VnetWVDall"
  }
}