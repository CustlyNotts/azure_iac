subscription_id     = <subscription_id>
resource_group_name = "rg-cargoes-finance-prod"
name                = "vnet-cargoes-finance-prod"
address_space       = ["10.240.40.0/22"]
subnets = [
  {
    name              = "snet-cargoes-finance-s1-prod"
    address_prefixes  = ["10.240.40.0/23"]
    service_endpoints = ["Microsoft.Storage", "Microsoft.Sql"]
    route_table_id    = "/subscriptions/f3d35456-12f8-4897-a1c3-2bb59e949ec5/resourceGroups/rg-cargoes-finance-prod/providers/Microsoft.Network/routeTables/Route-FinancePROD-1"
  },
  {
    name              = "snet-cargoes-finance-s2-prod"
    address_prefixes  = ["10.240.42.0/24"]
    service_endpoints = ["Microsoft.Storage", "Microsoft.Sql"]
    route_table_id    = "/subscriptions/f3d35456-12f8-4897-a1c3-2bb59e949ec5/resourceGroups/rg-cargoes-finance-prod/providers/Microsoft.Network/routeTables/Route-FinancePROD-2"
  }
]
peerings = {
  Vnet-Build = {
    remote_virtual_network_id = "/subscriptions/f3d35456-12f8-4897-a1c3-2bb59e949ec5/resourceGroups/Rg-Build/providers/Microsoft.Network/virtualNetworks/Vnet-Build"
  }
  testonly = {
    remote_virtual_network_id = "/subscriptions/f3d35456-12f8-4897-a1c3-2bb59e949ec5/resourceGroups/rg-cargoes-finance-prod-dr/providers/Microsoft.Network/virtualNetworks/vnet-cargoes-finance-selfhostedagent-dr"
  }
  cargoes-platform-cluster-prod-vnet = {
    remote_virtual_network_id = "/subscriptions/368014ab-c35d-4615-a165-842d87aec6f5/resourceGroups/cargoes-prod/providers/Microsoft.Network/virtualNetworks/cargoes-platform-cluster-prod-vnet"
  }
}