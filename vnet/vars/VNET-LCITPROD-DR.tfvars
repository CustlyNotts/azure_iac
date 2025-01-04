subscription_id     = <subscription_id>
resource_group_name = "RG-LCITPROD-DR"
name                = "VNET-LCITPROD-DR"
address_space       = ["10.164.0.0/21"]
subnets = [
  {
    name              = "snet-LCITPROD-DR"
    address_prefixes  = ["10.164.0.0/22"]
    route_table_id     = "/subscriptions/7bace25e-b7ab-4946-85c9-7caf3a4c49fa/resourceGroups/RG-LCITPROD-DR/providers/Microsoft.Network/routeTables/Route-LCITPROD-DR"
  },
  {
    name              = "snet-lcitprodDR-PVTendpoint"
    address_prefixes  = ["10.164.4.0/27"]
    route_table_id    = "/subscriptions/7bace25e-b7ab-4946-85c9-7caf3a4c49fa/resourceGroups/RG-LCITPROD-DR/providers/Microsoft.Network/routeTables/Route-LCITPROD-DR"
  }
]
peerings = {
  LCITprodDR-WVDALL = {
    remote_virtual_network_id = "/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rg-wvd-global/providers/Microsoft.Network/virtualNetworks/VnetWVDall"
  }
}
create_default_peerings = false