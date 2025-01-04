subscription_id     = <subscription_id>
resource_group_name = "cargoes-finance-staging"
name                = "cargoes-finance-staging-vnet"
address_space       = ["10.240.20.0/22"]
subnets = [
  {
    name             = "cargoes-finance-platform-cluster-staging-subnet-2"
    address_prefixes = ["10.240.22.0/24"]
    route_table_id   = "/subscriptions/f3d35456-12f8-4897-a1c3-2bb59e949ec5/resourceGroups/cargoes-finance-staging/providers/Microsoft.Network/routeTables/Route-FinanceSTG-2"
  },
  {
    name             = "cargoes-finance-platform-cluster-staging-subnet-1"
    address_prefixes = ["10.240.20.0/23"]
    route_table_id   = "/subscriptions/f3d35456-12f8-4897-a1c3-2bb59e949ec5/resourceGroups/cargoes-finance-staging/providers/Microsoft.Network/routeTables/Route-FinanceSTG-1"
  },
  {
    name             = "cargoes-finance-platform-uat-subnet"
    address_prefixes = ["10.240.23.0/26"]
    route_table_id   = "/subscriptions/f3d35456-12f8-4897-a1c3-2bb59e949ec5/resourceGroups/cargoes-finance-staging/providers/Microsoft.Network/routeTables/Route-TradeFinanceAVD"
  }
]
peerings = {
  Vnet-Build = {
    remote_virtual_network_id = "/subscriptions/f3d35456-12f8-4897-a1c3-2bb59e949ec5/resourceGroups/Rg-Build/providers/Microsoft.Network/virtualNetworks/Vnet-Build"
  }
  cargoess-platform-staging-vnet-peering = {
    remote_virtual_network_id = "/subscriptions/3ddf2459-a8f6-4f71-9fa4-9b3479dbf234/resourceGroups/cargoes-staging/providers/Microsoft.Network/virtualNetworks/cargoes-platform-cluster-staging-vnet"
  }
  connect-to-tf-vm-vnet = {
    remote_virtual_network_id = "/subscriptions/f3d35456-12f8-4897-a1c3-2bb59e949ec5/resourceGroups/cargoes-finance-staging/providers/Microsoft.Network/virtualNetworks/vnet_trfinance_nonprod"
  }
}