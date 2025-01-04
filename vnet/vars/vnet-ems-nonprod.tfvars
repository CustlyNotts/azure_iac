subscription_id     = <subscription_id>
resource_group_name = "rg-ems-dev"
name                = "vnet-ems-nonprod"
use_ipam            = true
vnet_mask           = 25
subnets = [
  {
    name      = "snet-app-ems-frontend-dev"
    snet_mask = 28
    #route_table_id    = "/subscriptions/ededa550-54e3-4ac7-a6b0-bca51f3c1495/resourceGroups/Rgvnet/providers/Microsoft.Network/routeTables/Routenau"
  },
  {
    name      = "snet-app-ems-backend-dev"
    snet_mask = 28
    #route_table_id    = "/subscriptions/ededa550-54e3-4ac7-a6b0-bca51f3c1495/resourceGroups/Rgvnet/providers/Microsoft.Network/routeTables/Routenau"
  }
  {
    name      = "snet-ems-dev"
    snet_mask = 28
    #route_table_id    = "/subscriptions/ededa550-54e3-4ac7-a6b0-bca51f3c1495/resourceGroups/Rgvnet/providers/Microsoft.Network/routeTables/Routenau"
  }
]
#dns_servers             = ["10.254.10.7", "10.254.10.4"]
create_default_peerings = true # Creation of peerings to Harmony Connect and Sechub in respective Azure regions. The default is true.
tags = {
  "Application Owner" : "Sana Zoud",
  "ENV" : "DEV",
  "Application Name" : "Event Management System",
  "RITM" : "RITM0081871"
}