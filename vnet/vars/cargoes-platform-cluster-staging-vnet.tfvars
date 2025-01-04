subscription_id     = <subscription_id>
resource_group_name = "cargoes-staging"
name                = "cargoes-platform-cluster-staging-vnet"
address_space       = ["10.240.224.0/21"]
subnets = [
  {
    name             = "snet-cargoes-functionapp"
    address_prefixes = ["10.240.229.0/28"]
    delegation       = "Microsoft.Web/serverFarms"
  },
  {
    name                      = "cargoes-platform-cluster-staging-subnet-2"
    address_prefixes          = ["10.240.228.0/24"]
    route_table_id            = "/subscriptions/3ddf2459-a8f6-4f71-9fa4-9b3479dbf234/resourceGroups/cargoes-staging/providers/Microsoft.Network/routeTables/route-table-cargoes-staging"
    network_security_group_id = "/subscriptions/3ddf2459-a8f6-4f71-9fa4-9b3479dbf234/resourceGroups/cargoes-staging/providers/Microsoft.Network/networkSecurityGroups/cargoes-platform-staging-deployment-nsg"
    service_endpoints         = ["Microsoft.KeyVault", "Microsoft.Sql"]
  },
  {
    name             = "cargoes-perftesting"
    address_prefixes = ["10.240.230.0/27"]
    route_table_id   = "/subscriptions/3ddf2459-a8f6-4f71-9fa4-9b3479dbf234/resourceGroups/cargoes-staging/providers/Microsoft.Network/routeTables/route-table-cargoes-staging"
  },
  {
    name                      = "cargoes-platform-cluster-staging-subnet-1"
    address_prefixes          = ["10.240.224.0/22"]
    route_table_id            = "/subscriptions/3ddf2459-a8f6-4f71-9fa4-9b3479dbf234/resourceGroups/cargoes-staging/providers/Microsoft.Network/routeTables/route-table-cargoes-staging"
    network_security_group_id = "/subscriptions/3ddf2459-a8f6-4f71-9fa4-9b3479dbf234/resourceGroups/cargoes-staging/providers/Microsoft.Network/networkSecurityGroups/cargoes-platform-staging-deployment-nsg"
    service_endpoints         = ["Microsoft.KeyVault", "Microsoft.Sql"]
  },
  {
    name             = "snet-jump-sophosvpn"
    address_prefixes = ["10.240.229.16/28"]
    route_table_id   = "/subscriptions/3ddf2459-a8f6-4f71-9fa4-9b3479dbf234/resourceGroups/rg-jump-sophosvpn/providers/Microsoft.Network/routeTables/rt-jump-sophosvpn"
  }
]
peerings = {
  cargoes-finance-staging-vnet-peering = {
    remote_virtual_network_id = "/subscriptions/f3d35456-12f8-4897-a1c3-2bb59e949ec5/resourceGroups/cargoes-finance-staging/providers/Microsoft.Network/virtualNetworks/cargoes-finance-staging-vnet"
  }
  self-hosted-byTerraform = {
    remote_virtual_network_id = "/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rg-wvd-global/providers/Microsoft.Network/virtualNetworks/VnetWVDall"
  }
  vnet-blockchainuae-staging = {
    remote_virtual_network_id = "/subscriptions/dc2a271c-2f36-4ca3-b3b6-79ada4cd5d6b/resourceGroups/rg-BlockchainUAEstaging/providers/Microsoft.Network/virtualNetworks/vnet-BlockchainUAE-staging"
  }
  Vnet-ecommstaging = {
    remote_virtual_network_id = "/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rg-ecommstaging/providers/Microsoft.Network/virtualNetworks/vnet-ecommstaging"
  }
  Cargoes-platform-cluster-staging-vnet-to-Cargoesrunner = {
    remote_virtual_network_id = "/subscriptions/99a847a3-1033-4a6d-a9bb-41a087e8c982/resourceGroups/rg_cargoesRunner_Vnet_nonprod/providers/Microsoft.Network/virtualNetworks/vnet-cargoesRunnernonprod"
  }
  temp-canada = {
    remote_virtual_network_id = "/subscriptions/3ddf2459-a8f6-4f71-9fa4-9b3479dbf234/resourceGroups/rg-cargoes-performance-testing-canada/providers/Microsoft.Network/virtualNetworks/cargoes-perftesting-canada-vnet"
  }
  temp-ind = {
    remote_virtual_network_id = "/subscriptions/3ddf2459-a8f6-4f71-9fa4-9b3479dbf234/resourceGroups/rg-cargoes-performance-testing/providers/Microsoft.Network/virtualNetworks/cargoes-perftesting-vnet"
  }
}