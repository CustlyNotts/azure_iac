subscription_id     = <subscription_id>
resource_group_name = "rg-mawani-boomi-nonprod"
name                = "vnet-mawani-boomi-nonprod"
address_space       = ["10.152.0.0/21"]
subnets = [
  {
    name              = "snet-mawani-boomi-nonprod"
    address_prefixes  = ["10.152.0.0/21"]
    service_endpoints = ["Microsoft.ServiceBus"]
    route_table_id    = "/subscriptions/7c7a17a5-36b8-40d9-a4b4-6f303637dc47/resourceGroups/rg-mawani-boomi-nonprod/providers/Microsoft.Network/routeTables/route-dtw-aks-boomi"
  }
]
peerings = {
  Netapps-vnetdtwboominonprd = {
    remote_virtual_network_id = "/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rg-boomi-prod/providers/Microsoft.Network/virtualNetworks/vnet-boomi-prod"
  }
  vnet-boomi-nonprod-cargoes-mawani = {
    remote_virtual_network_id = "/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rg-boomi-nonprd/providers/Microsoft.Network/virtualNetworks/vnet-boomi-nonprd"
  }
  mawani-boomi-nonprod = {
    remote_virtual_network_id = "/subscriptions/7c7a17a5-36b8-40d9-a4b4-6f303637dc47/resourceGroups/rg-mawani-boomi-nonprod/providers/Microsoft.Network/virtualNetworks/vnet-mawani-boomi-apim-nonprod"
  }
  Vnet-mawani-boomi-nonprod-to-vnet-storageserviceprod = {
    remote_virtual_network_id = "/subscriptions/ddd9f6d6-f88f-4023-b919-baabce24ed59/resourceGroups/rg-storageservice-prod/providers/Microsoft.Network/virtualNetworks/vnet-storageservice-prod"
  }
  vnet-mawani-boomi-nonprod-to-vnet-cargoes-boomi-apim-nonprod = {
    remote_virtual_network_id = "/subscriptions/8bfd9524-8956-41b0-a915-4e7ed9f8b84b/resourceGroups/Rg-Cargoes-APIM-NonProd/providers/Microsoft.Network/virtualNetworks/vnet-cargoes-boomi-apim-nonprod"
  }
}