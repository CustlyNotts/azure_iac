subscription_id     = <subscription_id>
resource_group_name  = "rg-cnsdev"
name                 = "vnet-cnsdev"
address_space        = ["172.16.20.0/22", "10.222.72.0/22"]
subnets              = [
  {
    name                      = "snet-agwtest"
    address_prefixes          = ["10.222.72.0/24"]
    service_endpoints         = []
    #route_table_id            = "None"
    #network_security_group_id = "None"
  },
  {
    name                      = "snet-cnsdev"
    address_prefixes          = ["172.16.20.0/22"]
    service_endpoints         = []
    route_table_id            = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-cnsdev/providers/Microsoft.Network/routeTables/Route-cnsdev"
    #network_security_group_id = "None"
  },
  {
    name                      = "snet-internallb"
    address_prefixes          = ["10.222.73.0/28"]
    service_endpoints         = []
    #route_table_id            = "None"
    #network_security_group_id = "None"
  }
]
create_default_peerings = false
