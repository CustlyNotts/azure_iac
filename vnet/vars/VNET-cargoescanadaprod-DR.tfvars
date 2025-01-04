subscription_id     = <subscription_id>
resource_group_name  = "RG-cargoescanadaprod-DR"
name                 = "VNET-cargoescanadaprod-DR"
address_space        = ["10.163.0.0/21"]
subnets              = [
  {
    name                      = "snet-cargoesprod-dr"
    address_prefixes          = ["10.163.0.0/22"]
    service_endpoints         = []
    route_table_id            = "/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/RG-cargoescanadaprod-DR/providers/Microsoft.Network/routeTables/Route-CargoesCanadaProd-DR"
    
  },
  {
    name                      = "snet-cargoescanadaDR-PVTendpoint"
    address_prefixes          = ["10.163.4.0/27"]
    service_endpoints         = []
    route_table_id            = "/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/RG-cargoescanadaprod-DR/providers/Microsoft.Network/routeTables/Route-CargoesCanadaProd-DR"
   
  }
]
