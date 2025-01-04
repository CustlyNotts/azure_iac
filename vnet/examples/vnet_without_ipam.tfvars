subscription_id     = <subscription_id>
resource_group_name = "cnsnw"
name                = "CNSNetwork"
address_space       = ["172.22.0.0/16"]
subnets = [
  { name = "GatewaySubnet", address_prefixes = ["172.22.128.0/24"], service_endpoints = ["Microsoft.ServiceBus", "Microsoft.Sql"] },
  { name = "snet-cnsagic", address_prefixes = ["172.22.129.0/24"], service_endpoints = ["Microsoft.ServiceBus"] },
  { name = "snet-cnsuat-ilb", address_prefixes = ["172.22.137.48/28"], service_endpoints = ["Microsoft.ServiceBus"] },
  { name = "snet-cnsprod-ilb", address_prefixes = ["172.22.137.0/28"], service_endpoints = ["Microsoft.ServiceBus", "Microsoft.Storage"], route_table_id = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/cnsnw/providers/Microsoft.Network/routeTables/route-cnspri" },
  { name = "snet-cnsprod", address_prefixes = ["172.22.96.0/19"], service_endpoints = ["Microsoft.ServiceBus", "Microsoft.Sql", "Microsoft.Storage"], route_table_id = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/cnsnw/providers/Microsoft.Network/routeTables/route-cnspri", network_security_group_id = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/rg-cnsprod/providers/Microsoft.Network/networkSecurityGroups/nsg-cnsprod" },
]
peerings = {
  uksouth-ukwest = {
    remote_virtual_network_id = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/rg-cnsdr/providers/Microsoft.Network/virtualNetworks/vnet-cnsdr"
  }
  cnsnetwork-cnsprihub = {
    remote_virtual_network_id = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/rg-cnsprihubnw/providers/Microsoft.Network/virtualNetworks/vnet-cnsprihub"
    use_remote_gateways       = true
  }
  cnsnetwork-cnsdrhub = {
    remote_virtual_network_id = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/rg-cnsdrhubnw/providers/Microsoft.Network/virtualNetworks/vnet-cnsdrhub"
  }
  VnetPeering-CNSNetwork-AdVnet = {
    remote_virtual_network_id = "/subscriptions/cf524703-9d5e-4aa2-bbe9-975fe083f66a/resourceGroups/rgadds/providers/Microsoft.Network/virtualNetworks/Vnet-AD"
  }
  vnet-eursechub = {
    remote_virtual_network_id = "/subscriptions/1b37d994-cdaf-4d33-b73d-afb406d36357/resourceGroups/rg-eur-appgw-prod/providers/Microsoft.Network/virtualNetworks/vnet-eurappgw"
  }
}
