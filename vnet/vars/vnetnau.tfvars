subscription_id     = <subscription_id>
resource_group_name = "Rgvnet"
name                = "vnetnau"
address_space       = ["10.236.0.0/21"]
#dns_servers         = ["10.254.9.4", "10.254.9.6"]
create_default_peerings = false
subnets = [
  {
    name              = "nau-shared"
    address_prefixes  = ["10.236.7.0/25"]
    service_endpoints = ["Microsoft.KeyVault"]
    route_table_id    = "/subscriptions/ededa550-54e3-4ac7-a6b0-bca51f3c1495/resourceGroups/Rgvnet/providers/Microsoft.Network/routeTables/Routenau"
  },
  {
    name              = "nau-uat-aks"
    address_prefixes  = ["10.236.4.0/23"]
    service_endpoints = ["Microsoft.KeyVault", "Microsoft.Sql"]
  },
  {
    name              = "nau-dev-frontend"
    address_prefixes  = ["10.236.2.0/23"]
    service_endpoints = ["Microsoft.KeyVault"]
    route_table_id    = "/subscriptions/ededa550-54e3-4ac7-a6b0-bca51f3c1495/resourceGroups/Rgvnet/providers/Microsoft.Network/routeTables/Routenau"
  }
]

peerings = {
  vnetnau = {
    remote_virtual_network_id = "/subscriptions/cf524703-9d5e-4aa2-bbe9-975fe083f66a/resourceGroups/rgnwsechub/providers/Microsoft.Network/virtualNetworks/vnetsechub"
  }
  vnetnau-jumpervm = {
      remote_virtual_network_id = "/subscriptions/ededa550-54e3-4ac7-a6b0-bca51f3c1495/resourceGroups/Rgnaudev/providers/Microsoft.Network/virtualNetworks/vnetnaudev"
  }
  vnetnauuat = {
    remote_virtual_network_id = "/subscriptions/ededa550-54e3-4ac7-a6b0-bca51f3c1495/resourceGroups/Rgnauuat/providers/Microsoft.Network/virtualNetworks/Vnetnauuat"
  }
  vnetnauprod = {
    remote_virtual_network_id = "/subscriptions/ededa550-54e3-4ac7-a6b0-bca51f3c1495/resourceGroups/Rgnauprod/providers/Microsoft.Network/virtualNetworks/vnetnauprod"
  }
  vnetofbiz-vnetnau = {
    remote_virtual_network_id = "/subscriptions/ededa550-54e3-4ac7-a6b0-bca51f3c1495/resourceGroups/RgOfbizuat/providers/Microsoft.Network/virtualNetworks/Vnetofbizuat"
  }
}
