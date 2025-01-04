subscription_id     = <subscription_id>
resource_group_name = "rg-mawani-boomi-prod"
name                = "vnet-mawani-boomi-prod"
address_space       = ["10.152.16.0/20"]
subnets = [
  {
    name              = "snet-mawani-boomi-prod"
    address_prefixes  = ["10.152.16.0/20"]
    service_endpoints = ["Microsoft.ServiceBus"]
    route_table_id    = "/subscriptions/7c7a17a5-36b8-40d9-a4b4-6f303637dc47/resourceGroups/rg-mawani-boomi-prod/providers/Microsoft.Network/routeTables/route-dtw-aks-boomi-prod"
  }
]
peerings = {
  mawani-apim = {
    remote_virtual_network_id = "/subscriptions/7c7a17a5-36b8-40d9-a4b4-6f303637dc47/resourceGroups/rg-mawani-boomi-prod/providers/Microsoft.Network/virtualNetworks/vnet-mawani-boomi-apim-prod"
  }
  vnet-mawani-netapps = {
    remote_virtual_network_id = "/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rg-boomi-prod/providers/Microsoft.Network/virtualNetworks/vnet-boomi-prod"
  }
  Peer-Vnet-mawani-boomi-prod-to-vnet-storageservice-prod = {
    remote_virtual_network_id = "/subscriptions/ddd9f6d6-f88f-4023-b919-baabce24ed59/resourceGroups/rg-storageservice-prod/providers/Microsoft.Network/virtualNetworks/vnet-storageservice-prod"
  }
}