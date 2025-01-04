subscription_id     = <subscription_id>
resource_group_name = "rg-wvd-poems"
name                = "vnet-wvd-poems"
address_space       = ["10.237.8.0/24"]
use_ipam            = false
create_default_peerings = false
dns_servers         = ["10.254.10.4", "10.254.10.9"]
subnets = [
  {
    name             = "snet-wvd-poems"
    address_prefixes = ["10.237.8.0/24"]
    route_table_id   = "/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/rg-wvd-poems/providers/Microsoft.Network/routeTables/route-wvd-poems"
  }
  ]

tags = {
        "Application Name": "Poems WVD",
        "Application Owner": "Global Infra Team",
        "ENV": "PROD"
}



peerings = {
  
sechub-wvdpoems = {
    remote_virtual_network_id = "/subscriptions/cf524703-9d5e-4aa2-bbe9-975fe083f66a/resourceGroups/rgnwsechub/providers/Microsoft.Network/virtualNetworks/vnetsechub"
  },

wvd-poems-vnet-netapps = {
    remote_virtual_network_id = "/subscriptions/ddd9f6d6-f88f-4023-b919-baabce24ed59/resourceGroups/rg-netapps-prod/providers/Microsoft.Network/virtualNetworks/Vnet-NetApps-Prod"
  },
Peer-UAE-vnet-wvd-poems = {
    remote_virtual_network_id = "/subscriptions/cf524703-9d5e-4aa2-bbe9-975fe083f66a/resourceGroups/RG-UAE-CP-Perimeter81/providers/Microsoft.Network/virtualNetworks/vnet-uae-cpperimeter81-prod"
}


}