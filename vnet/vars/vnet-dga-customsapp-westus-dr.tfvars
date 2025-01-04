subscription_id     = <subscription_id>
resource_group_name = "rg-dga-customsapp-dr"
name                = "vnet-dga-customsapp-westus-dr"
address_space       = ["10.233.64.0/20"]
subnets = [
  {
    name             = "snet-dga-customsapp-dr-native"
    address_prefixes = ["10.233.68.0/27"]
  },
  {
    name             = "snet-dga-customsapp-dr-lb-westus"
    address_prefixes = ["10.233.69.0/24"]
  },
  {
    name                      = "snet-dga-customsapp-dr-bastion"
    address_prefixes          = ["10.233.68.32/28"]
    route_table_id            = "/subscriptions/55744d2d-7e03-4a83-a021-a23196bd65db/resourceGroups/rg-dga-customsapp-prihub-dr/providers/Microsoft.Network/routeTables/route-dgap2svpncp-dr"
    network_security_group_id = "/subscriptions/55744d2d-7e03-4a83-a021-a23196bd65db/resourceGroups/rg-dga-customsapp-shared-services/providers/Microsoft.Network/networkSecurityGroups/nsg-bastion-dga-customsapp-dr"
  },
  {
    name             = "snet-dga-customsapp-dr-aks-westus"
    address_prefixes = ["10.233.64.0/22"]
    route_table_id   = "/subscriptions/55744d2d-7e03-4a83-a021-a23196bd65db/resourceGroups/rg-dga-customsapp-prihub-dr/providers/Microsoft.Network/routeTables/route-dgap2svpncp-dr"
  }
]
peerings = {
  peering-to-prihubdr-from-dga-dr = {
    remote_virtual_network_id = "/subscriptions/55744d2d-7e03-4a83-a021-a23196bd65db/resourceGroups/rg-dga-customsapp-prihub-dr/providers/Microsoft.Network/virtualNetworks/vnet-dga-customsapp-prihub-dr"
  }
  peering-to-dgadr-from-prihub = {
    remote_virtual_network_id = "/subscriptions/55744d2d-7e03-4a83-a021-a23196bd65db/resourceGroups/rg-dga-customsapp-prihub/providers/Microsoft.Network/virtualNetworks/vnet-dga-customsapp-prihub"
  }
}