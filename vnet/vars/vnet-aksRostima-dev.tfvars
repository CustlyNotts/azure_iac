subscription_id     = <subscription_id>
resource_group_name = "Rg-Vnet"
name                = "vnet-aksRostima-dev"
address_space       = ["10.154.8.0/21"]
#create_default_peerings = false
subnets = [
  {
    name             = "snet-aksRostima-dev"
    address_prefixes = ["10.154.8.0/21"]
    route_table_id   = "/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/Rg-Rostimadev/providers/Microsoft.Network/routeTables/route-rostimadev"
  }
]


peerings = {
  
Peer-UAE-sechub = {
    remote_virtual_network_id = "/subscriptions/cf524703-9d5e-4aa2-bbe9-975fe083f66a/resourceGroups/rgnwsechub/providers/Microsoft.Network/virtualNetworks/vnetsechub"
  },

Peer-UAE-vnet-aksRostima-dev = {
    remote_virtual_network_id = "/subscriptions/cf524703-9d5e-4aa2-bbe9-975fe083f66a/resourceGroups/RG-UAE-CP-Perimeter81/providers/Microsoft.Network/virtualNetworks/vnet-uae-cpperimeter81-prod"
    allow_forwarded_traffic      = false
  }

}