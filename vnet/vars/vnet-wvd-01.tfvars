subscription_id     = <subscription_id>
resource_group_name = "RG-WVD-CNS"
name                = "vnet-wvd-01"
address_space       = ["172.23.0.0/28"]
dns_servers         = ["10.254.9.4", "10.254.9.6"]
location            = "uksouth"
subnets = [
  {
    name              = "snet-wvd-01"
    address_prefixes  = ["172.23.0.0/28"]
    service_endpoints = ["Microsoft.ServiceBus"]
  }
]
create_default_peerings = false
peerings = {
  peer-vnet-wvd-01-to-cnsnetwork = {
    remote_virtual_network_id = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/rg-cnsprihubnw/providers/Microsoft.Network/virtualNetworks/vnet-cnsprihub"
  }
  peer-vnet-wvd-01-to-vnet-sharedsechub = {
    remote_virtual_network_id = "/subscriptions/cf524703-9d5e-4aa2-bbe9-975fe083f66a/resourceGroups/rgnwsechub/providers/Microsoft.Network/virtualNetworks/vnetsechub"
  }
  peer-vnet-wvd01-to-vnet-bthub = {
    remote_virtual_network_id = "/subscriptions/64421e13-ee76-43d2-93d5-bb5b97858ba5/resourceGroups/rg-btprihubnw/providers/Microsoft.Network/virtualNetworks/vnet-bthub"
  }
}
