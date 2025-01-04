subscription_id     = <subscription_id>
resource_group_name = "rg-ddw-boomi-nonprod"
name                = "vnet-ddwd-boomi-nonprod"
address_space       = ["10.252.64.0/20"]
subnets = [
  {
    name             = "Snet-Boominonprod"
    address_prefixes = ["10.252.64.0/21"]
    route_table_id   = "/subscriptions/7c422b28-6937-4df7-895e-c19e321257cb/resourceGroups/rg-ddw-boomi-nonprod/providers/Microsoft.Network/routeTables/route-ddw-aks-boominonprod"
  },
  {
    name             = "Snet-ddwBoomi-VM"
    address_prefixes = ["10.252.73.0/24"]
  },
  {
    name                      = "Snet-APIM-Boominonprod"
    address_prefixes          = ["10.252.72.0/24"]
    delegation                = "Microsoft.ApiManagement/service"
    network_security_group_id = "/subscriptions/7c422b28-6937-4df7-895e-c19e321257cb/resourceGroups/rg-ddw-boomi-nonprod/providers/Microsoft.Network/networkSecurityGroups/apim-ddw-nonprod-nsg"
  }
]
peerings = {
  ddwdprod-vnet-ddwprihub = {
    remote_virtual_network_id = "/subscriptions/7c422b28-6937-4df7-895e-c19e321257cb/resourceGroups/rg-ddwprihubnw/providers/Microsoft.Network/virtualNetworks/vnet-ddwprihub"
    use_remote_gateways       = true
  }
  ddwdprod-ddwdvnet-peering = {
    remote_virtual_network_id = "/subscriptions/7c422b28-6937-4df7-895e-c19e321257cb/resourceGroups/Ddwd_Vnet/providers/Microsoft.Network/virtualNetworks/Ddwdvnet"
  }
  ddwdprod-peering = {
    remote_virtual_network_id = "/subscriptions/7c422b28-6937-4df7-895e-c19e321257cb/resourceGroups/RG_DDW_PROD_APP/providers/Microsoft.Network/virtualNetworks/Vnet-ddwd-Prod"
  }
  ddwd-nonprod-peering = {
    remote_virtual_network_id = "/subscriptions/7c422b28-6937-4df7-895e-c19e321257cb/resourceGroups/RG_DDW_UAT_APP/providers/Microsoft.Network/virtualNetworks/Vnet-ddwd-Non-Prod"
  }
  ddwdAVD-ddwdboominonprod-rvnpl-peering = {
    remote_virtual_network_id = "/subscriptions/7c422b28-6937-4df7-895e-c19e321257cb/resourceGroups/rg-ddw-avd-shrd/providers/Microsoft.Network/virtualNetworks/Vnet-ddwd-AVD"
  }
}
