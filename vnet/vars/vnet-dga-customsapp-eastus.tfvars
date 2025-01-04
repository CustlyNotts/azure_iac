subscription_id     = <subscription_id>
resource_group_name = "rg-dga-customsapp-preprod"
name                = "vnet-dga-customsapp-eastus"
address_space       = ["10.233.16.0/20"]
subnets = [
  {
    name             = "GatewaySubnet"
    address_prefixes = ["10.233.22.0/24"]
  },
  {
    name             = "snet-dga-customsapp-preprod-aks-eastus"
    address_prefixes = ["10.233.16.0/22"]
    route_table_id   = "/subscriptions/55744d2d-7e03-4a83-a021-a23196bd65db/resourceGroups/rg-dgacustoms-checkpointappfw/providers/Microsoft.Network/routeTables/route-dgas2svpncheckpoint"
  },
  {
    name                      = "snet-dga-customsapp-preprod-bastion-eastus"
    address_prefixes          = ["10.233.21.32/28"]
    route_table_id            = "/subscriptions/55744d2d-7e03-4a83-a021-a23196bd65db/resourceGroups/rg-dgacustoms-checkpointappfw/providers/Microsoft.Network/routeTables/route-dgap2svpncheckpoint"
    network_security_group_id = "/subscriptions/55744d2d-7e03-4a83-a021-a23196bd65db/resourceGroups/rg-dga-customsapp-shared-services/providers/Microsoft.Network/networkSecurityGroups/nsg-bastion-dga-customsapp"
  },
  {
    name                      = "snet-dga-customsapp-preprod-native-eastus"
    address_prefixes          = ["10.233.21.0/27"]
    service_endpoints         = ["Microsoft.Sql"]
    route_table_id            = "/subscriptions/55744d2d-7e03-4a83-a021-a23196bd65db/resourceGroups/rg-dgacustoms-checkpointappfw/providers/Microsoft.Network/routeTables/route-dgas2svpncheckpoint"
    network_security_group_id = "/subscriptions/55744d2d-7e03-4a83-a021-a23196bd65db/resourceGroups/rg-dga-customsapp-shared-services/providers/Microsoft.Network/networkSecurityGroups/nsg-native-dga-customsapp"
  },
  {
    name                      = "snet-dga-customsapp-preprod-lb-eastus"
    address_prefixes          = ["10.233.20.0/24"]
    service_endpoints         = ["Microsoft.Sql"]
    route_table_id            = "/subscriptions/55744d2d-7e03-4a83-a021-a23196bd65db/resourceGroups/rg-dgacustoms-checkpointappfw/providers/Microsoft.Network/routeTables/route-dgas2svpncheckpoint"
    network_security_group_id = "/subscriptions/55744d2d-7e03-4a83-a021-a23196bd65db/resourceGroups/rg-dga-customsapp-shared-services/providers/Microsoft.Network/networkSecurityGroups/nsg-lb-dga-customsapp"
  },
]

peerings = {
  peering-to-vnet-dga-customsapp-prihub = {
    remote_virtual_network_id = "/subscriptions/55744d2d-7e03-4a83-a021-a23196bd65db/resourceGroups/rg-dga-customsapp-prihub/providers/Microsoft.Network/virtualNetworks/vnet-dga-customsapp-prihub"
  }
  peering-to-vnet-dga-customsapp-prihubdr = {
    remote_virtual_network_id = "/subscriptions/55744d2d-7e03-4a83-a021-a23196bd65db/resourceGroups/rg-dga-customsapp-prihub-dr/providers/Microsoft.Network/virtualNetworks/vnet-dga-customsapp-prihub-dr"
  }
}