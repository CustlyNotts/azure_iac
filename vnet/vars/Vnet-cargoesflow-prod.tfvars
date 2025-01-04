subscription_id     = <subscription_id>
resource_group_name = "rg-cargoesflowprod-infra"
name                = "Vnet-cargoesflow-prod"
address_space       = ["10.243.32.0/19"]
subnets = [
  {
    name              = "snet-nonaks-prod"
    address_prefixes  = ["10.243.44.0/22"]
    service_endpoints = ["Microsoft.Storage"]
    route_table_id    = "/subscriptions/226040e8-5c0e-44f2-8915-1afed1732440/resourceGroups/rg-cargoesflow-prod/providers/Microsoft.Network/routeTables/rt-cargoesflow-prod"
  },
  {
    name             = "snet-aksnode-prod"
    address_prefixes = ["10.243.40.0/23"]
    route_table_id   = "/subscriptions/226040e8-5c0e-44f2-8915-1afed1732440/resourceGroups/rg-cargoesflowprod-infra/providers/Microsoft.Network/routeTables/rt-cargoesflowaks-prod"
  },
  {
    name             = "snet-akspod-prod"
    address_prefixes = ["10.243.32.0/21"]
    route_table_id   = "/subscriptions/226040e8-5c0e-44f2-8915-1afed1732440/resourceGroups/rg-cargoesflowprod-infra/providers/Microsoft.Network/routeTables/rt-cargoesflowaks-prod"
  },
  {
    name              = "snet-cargoesflowfunction-prod"
    address_prefixes  = ["10.243.42.0/27"]
    service_endpoints = ["Microsoft.Storage"]
    delegation        = "Microsoft.Web/serverFarms"
  }
]
peerings = {
  vnetsechu-cargoesprod = {
    remote_virtual_network_id = "/subscriptions/368014ab-c35d-4615-a165-842d87aec6f5/resourceGroups/cargoes-prod/providers/Microsoft.Network/virtualNetworks/cargoes-platform-cluster-prod-vnet"
  }
}