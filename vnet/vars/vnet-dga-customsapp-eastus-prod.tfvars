subscription_id     = <subscription_id>
resource_group_name = "rg-dga-customsapp-prod"
name                = "vnet-dga-customsapp-eastus-prod"
address_space       = ["10.233.48.0/20"]
subnets = [
  {
    name             = "snet-dga-customsapp-prod-bastion-eastus"
    address_prefixes = ["10.233.53.32/28"]
    route_table_id   = "/subscriptions/55744d2d-7e03-4a83-a021-a23196bd65db/resourceGroups/rg-dgacustoms-checkpointappfw/providers/Microsoft.Network/routeTables/route-dgap2svpncheckpoint"
  },
  {
    name              = "snet-dga-customsapp-prod-native-eastus"
    address_prefixes  = ["10.233.53.0/27"]
    service_endpoints = ["Microsoft.Sql", "Microsoft.Storage"]
    route_table_id    = "/subscriptions/55744d2d-7e03-4a83-a021-a23196bd65db/resourceGroups/rg-dgacustoms-checkpointappfw/providers/Microsoft.Network/routeTables/route-dgap2svpncheckpoint"
  },
  {
    name                      = "snet-dga-customsapp-prod-lb-eastus"
    address_prefixes          = ["10.233.52.0/24"]
    route_table_id            = "/subscriptions/55744d2d-7e03-4a83-a021-a23196bd65db/resourceGroups/rg-dgacustoms-checkpointappfw/providers/Microsoft.Network/routeTables/route-dgap2svpncheckpoint"
    network_security_group_id = "/subscriptions/55744d2d-7e03-4a83-a021-a23196bd65db/resourceGroups/rg-dga-customsapp-shared-services/providers/Microsoft.Network/networkSecurityGroups/nsg-lb-dga-customsapp"
  },
  {
    name              = "snet-dga-customsapp-prod-aks-eastus"
    address_prefixes  = ["10.233.48.0/22"]
    service_endpoints = ["Microsoft.Sql"]
    route_table_id    = "/subscriptions/55744d2d-7e03-4a83-a021-a23196bd65db/resourceGroups/rg-dgacustoms-checkpointappfw/providers/Microsoft.Network/routeTables/route-dgap2svpncheckpoint"
  }
]
peerings = {
  peering-to-vnet-dga-customsapp-prihub-prod = {
    remote_virtual_network_id = "/subscriptions/55744d2d-7e03-4a83-a021-a23196bd65db/resourceGroups/rg-dga-customsapp-prihub/providers/Microsoft.Network/virtualNetworks/vnet-dga-customsapp-prihub"
  }
}