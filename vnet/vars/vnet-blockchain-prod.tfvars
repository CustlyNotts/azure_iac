subscription_id     = <subscription_id>
resource_group_name = "rg-blockchain-infra-prod"
name                = "vnet-blockchain-prod"
address_space       = ["10.191.32.0/19"]
subnets = [
  {
    name              = "snet-nonaks-prod"
    address_prefixes  = ["10.191.40.0/22"]
    service_endpoints = ["Microsoft.Storage"]
    route_table_id    = "/subscriptions/dc2a271c-2f36-4ca3-b3b6-79ada4cd5d6b/resourceGroups/rg-blockchain-infra-prod/providers/Microsoft.Network/routeTables/rt-blockchain-prod"
  },
  {
    name              = "snet-aksnode-prod"
    address_prefixes  = ["10.191.44.0/23"]
    service_endpoints = ["Microsoft.Storage"]
    route_table_id    = "/subscriptions/dc2a271c-2f36-4ca3-b3b6-79ada4cd5d6b/resourceGroups/rg-blockchain-infra-prod/providers/Microsoft.Network/routeTables/rt-blockchain-prod"
  },
  {
    name              = "snet-akspod-prod"
    address_prefixes  = ["10.191.32.0/21"]
    service_endpoints = ["Microsoft.Storage"]
    route_table_id    = "/subscriptions/dc2a271c-2f36-4ca3-b3b6-79ada4cd5d6b/resourceGroups/rg-blockchain-infra-prod/providers/Microsoft.Network/routeTables/rt-blockchain-prod"
  },
  {
    name              = "snet-psqlflexibleserver-prod"
    address_prefixes  = ["10.191.46.0/27"]
    service_endpoints = ["Microsoft.Storage"]
    route_table_id    = "/subscriptions/dc2a271c-2f36-4ca3-b3b6-79ada4cd5d6b/resourceGroups/rg-blockchain-infra-prod/providers/Microsoft.Network/routeTables/rt-blockchain-prod"
  }
]

peerings = {
  cargoes-prod-vnet = {
    remote_virtual_network_id = "/subscriptions/368014ab-c35d-4615-a165-842d87aec6f5/resourceGroups/cargoes-prod/providers/Microsoft.Network/virtualNetworks/cargoes-platform-cluster-prod-vnet"
  }
}