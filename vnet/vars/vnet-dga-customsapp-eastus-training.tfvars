subscription_id     = <subscription_id>
resource_group_name = "rg-dga-customsapp-training"
name                = "vnet-dga-customsapp-eastus-training"
address_space       = ["10.233.32.0/20"]
subnets = [
  {
    name              = "snet-dga-customsapp-training-aks-eastus"
    address_prefixes  = ["10.233.32.0/22"]
    service_endpoints = ["Microsoft.Sql"]
  },
  {
    name             = "snet-dga-customsapp-training-bastion-eastus"
    address_prefixes = ["10.233.37.32/28"]
    route_table_id   = "/subscriptions/55744d2d-7e03-4a83-a021-a23196bd65db/resourceGroups/rg-dgacustoms-checkpointappfw/providers/Microsoft.Network/routeTables/route-dgap2svpncheckpoint"
  },
  {
    name             = "snet-dga-customsapp-training-native-eastus"
    address_prefixes = ["10.233.37.0/27"]
    route_table_id   = "/subscriptions/55744d2d-7e03-4a83-a021-a23196bd65db/resourceGroups/rg-dga-customsapp-priappgw/providers/Microsoft.Network/routeTables/route-dga-trainingnativeeastus"
  },
  {
    name             = "snet-dga-customsapp-training-lb-eastus"
    address_prefixes = ["10.233.36.0/24"]
  }
]
peerings = {
  peering-to-vnet-dga-customsapp-prihub-training = {
    remote_virtual_network_id = "/subscriptions/55744d2d-7e03-4a83-a021-a23196bd65db/resourceGroups/rg-dga-customsapp-prihub/providers/Microsoft.Network/virtualNetworks/vnet-dga-customsapp-prihub"
  }
  DPWGLBSECHUB = {
    remote_virtual_network_id = "/subscriptions/cf524703-9d5e-4aa2-bbe9-975fe083f66a/resourceGroups/rgnwsechub/providers/Microsoft.Network/virtualNetworks/vnetsechub"
  }
}