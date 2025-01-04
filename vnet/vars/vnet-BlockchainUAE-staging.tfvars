subscription_id     = <subscription_id>
resource_group_name = "rg-BlockchainUAEstaging"
name                = "vnet-BlockchainUAE-staging"
address_space       = ["10.191.0.0/21", "10.45.171.128/26"]
subnets = [
  {
    name              = "snet-blockchain"
    address_prefixes  = ["10.191.0.0/21"]
    service_endpoints = ["Microsoft.Sql", "Microsoft.Storage"]
    route_table_id    = "/subscriptions/dc2a271c-2f36-4ca3-b3b6-79ada4cd5d6b/resourceGroups/rg-BlockchainUAEstaging/providers/Microsoft.Network/routeTables/Route-Blockchainuae-Staging"
  },
  {
    name              = "snet-blockchain-staging-psql"
    address_prefixes  = ["10.45.171.128/26"]
    service_endpoints = ["Microsoft.Storage"]
    route_table_id    = "/subscriptions/dc2a271c-2f36-4ca3-b3b6-79ada4cd5d6b/resourceGroups/rg-BlockchainUAEstaging/providers/Microsoft.Network/routeTables/Route-Blockchainuae-Staging"
  }
]

peerings = {
  cargoes-platform-staging-vnet = {
    remote_virtual_network_id = "/subscriptions/3ddf2459-a8f6-4f71-9fa4-9b3479dbf234/resourceGroups/cargoes-staging/providers/Microsoft.Network/virtualNetworks/cargoes-platform-cluster-staging-vnet"
  }
}