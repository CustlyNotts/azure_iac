subscription_id     = <subscription_id>
resource_group_name = "rg-cargoestms-prod-infra"
name                = "vnet-cargoestms-prod"
use_ipam            = true
vnet_mask           = 19
subnets = [
  {
    name      = "snet-cargoestms-prod"
    snet_mask = 23
    #route_table_id    = "/subscriptions/ededa550-54e3-4ac7-a6b0-bca51f3c1495/resourceGroups/Rgvnet/providers/Microsoft.Network/routeTables/Routenau"
  },
   {
    name      = "snet-cargoestms-prod-psql"
    snet_mask = 26
    #route_table_id    = "/subscriptions/ededa550-54e3-4ac7-a6b0-bca51f3c1495/resourceGroups/Rgvnet/providers/Microsoft.Network/routeTables/Routenau"
  },
    {
    name      = "snet-cargoestms-prod-aks"
    snet_mask = 20
    #route_table_id    = "/subscriptions/ededa550-54e3-4ac7-a6b0-bca51f3c1495/resourceGroups/Rgvnet/providers/Microsoft.Network/routeTables/Routenau"
  }
]
create_default_peerings = true # Creation of peerings to Harmony Connect and Sechub in respective Azure regions. The default is true.
tags = {
  "Application Name" : "Cargoes Transportation Management System",
  "Application Owner" : "Shiv Suthar/Ritesh Singh",
  "ENV" : "Prod"
  "RITM" : "RITM0093064"
}