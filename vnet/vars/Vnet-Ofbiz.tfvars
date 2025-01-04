subscription_id     = <subscription_id>
resource_group_name = "Rg-Ofbiz-Prod"
name                = "Vnet-Ofbiz"
address_space       = ["10.236.64.0/24"]
#dns_servers         = ["10.254.9.4", "10.254.9.6"]
create_default_peerings = false
subnets = [
  {
    name              = "Prod"
    address_prefixes  = ["10.236.64.0/26"]
    service_endpoints = ["Microsoft.AzureActiveDirectory", "Microsoft.AzureCosmosDB", "Microsoft.CognitiveServices", "Microsoft.ContainerRegistry", "Microsoft.EventHub", "Microsoft.KeyVault", "Microsoft.ServiceBus", "Microsoft.Sql", "Microsoft.Storage", "Microsoft.Web"]
    route_table_id    = "/subscriptions/ededa550-54e3-4ac7-a6b0-bca51f3c1495/resourceGroups/Rg-Ofbiz-Prod/providers/Microsoft.Network/routeTables/Route-Ofbiz-Prod"
  }
]

peerings = {
  Vnetglbsechub = {
    remote_virtual_network_id = "/subscriptions/cf524703-9d5e-4aa2-bbe9-975fe083f66a/resourceGroups/rgnwsechub/providers/Microsoft.Network/virtualNetworks/vnetsechub"
  }
  Peer-UAE-Vnet-Ofbiz = {
      remote_virtual_network_id = "/subscriptions/cf524703-9d5e-4aa2-bbe9-975fe083f66a/resourceGroups/RG-UAE-CP-Perimeter81/providers/Microsoft.Network/virtualNetworks/vnet-uae-cpperimeter81-prod"
  }
}
