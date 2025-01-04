subscription_id     = <subscription_id>
resource_group_name = "Ddwd_Vnet"
name                = "Ddwdvnet"
address_space       = ["10.252.0.0/20"]
dns_servers         = ["10.252.4.4", "172.16.100.132", "172.16.100.133"]
tags = {
  "Ddwdvnet" : "1"
  "IaC By" : "Ayodele Orebe"
}
subnets = [
  {
    name             = "Ddwd_UAT"
    address_prefixes = ["10.252.4.0/22"]
    route_table_id   = "/subscriptions/7c422b28-6937-4df7-895e-c19e321257cb/resourceGroups/Ddwd_Vnet/providers/Microsoft.Network/routeTables/routeddwd"
  },
  {
    name             = "Ddwd_DEV"
    address_prefixes = ["10.252.8.0/22"]
    route_table_id   = "/subscriptions/7c422b28-6937-4df7-895e-c19e321257cb/resourceGroups/Ddwd_Vnet/providers/Microsoft.Network/routeTables/routeddwd"
  },
  {
    name             = "Ddwd_Production"
    address_prefixes = ["10.252.0.0/22"]
    route_table_id   = "/subscriptions/7c422b28-6937-4df7-895e-c19e321257cb/resourceGroups/Ddwd_Vnet/providers/Microsoft.Network/routeTables/routeddwd"
  },
  {
    name             = "Ddwd_AVD_Eng"
    address_prefixes = ["10.252.13.0/25"]
  },
  {
    name             = "Ddwd_AVD_Shared"
    address_prefixes = ["10.252.12.0/26"]
    route_table_id   = "/subscriptions/7c422b28-6937-4df7-895e-c19e321257cb/resourceGroups/Ddwd_Vnet/providers/Microsoft.Network/routeTables/Route-DryDocks-AVD"
  },
  {
    name             = "ddwd_FA_Scheduler"
    address_prefixes = "10.252.14.0/28"
    route_table_id   = "/subscriptions/7c422b28-6937-4df7-895e-c19e321257cb/resourceGroups/Ddwd_Vnet/providers/Microsoft.Network/routeTables/routeddwd"
  },
  {
    name             = "AzureBastionSubnet"
    address_prefixes = "10.252.12.128/26"
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