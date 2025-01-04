subscription_id     = <subscription_id>
resource_group_name = "rg-cargoes-finance-prod-dr"
name                = "vnet-cargoes-finance-pro-dr"
address_space       = ["10.240.44.0/22"]
subnets = [
  {
    name              = "snet-cargoes-finance-s1-prod-dr"
    address_prefixes  = ["10.240.44.0/23"]
    service_endpoints = ["Microsoft.Storage", "Microsoft.Sql"]
    route_table_id    = "/subscriptions/f3d35456-12f8-4897-a1c3-2bb59e949ec5/resourceGroups/rg-cargoes-finance-prod-dr/providers/Microsoft.Network/routeTables/Route-cargoesfinance-Prod-dr"
  },
  {
    name              = "snet-cargoes-finance-s2-prod-dr"
    address_prefixes  = ["10.240.46.0/24"]
    service_endpoints = ["Microsoft.Storage", "Microsoft.Sql"]
    route_table_id    = "/subscriptions/f3d35456-12f8-4897-a1c3-2bb59e949ec5/resourceGroups/rg-cargoes-finance-prod-dr/providers/Microsoft.Network/routeTables/Route-cargoesfinance-Prod-dr"
  }
]
peerings = {
  aks-dr = {
    remote_virtual_network_id = "/subscriptions/f3d35456-12f8-4897-a1c3-2bb59e949ec5/resourceGroups/rg-cargoes-finance-prod-dr/providers/Microsoft.Network/virtualNetworks/vnet-cargoes-finance-selfhostedagent-dr"
  }
  wvd-financedr = {
    remote_virtual_network_id = "/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rg-wvd-global/providers/Microsoft.Network/virtualNetworks/VnetWVDall"
  }
}