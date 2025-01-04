subscription_id     = <subscription_id>
resource_group_name = "Rg-Vnet"
name                = "vnet-rostimafunctions"
address_space       = ["10.154.18.0/24"]
create_default_peerings = false
subnets = [
  {
    name             = "snet-rosteringarchivalfunction"
    address_prefixes = ["10.154.18.0/28"]
    route_table_id   = "/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/Rg-Vnet/providers/Microsoft.Network/routeTables/Route-Rosteringarchivalfunction"
  },
  {
    name             = "snet-common"
    address_prefixes = ["10.154.18.16/28"]
    route_table_id   = "/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/Rg-Vnet/providers/Microsoft.Network/routeTables/Route-Rosteringarchivalfunction"
    service_endpoints = ["Microsoft.Storage"]
  },
  {
    name             = "snet-rosteringarchivalfunction-prod"
    address_prefixes = ["10.154.18.32/28"]
    route_table_id   = "/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/Rg-Vnet/providers/Microsoft.Network/routeTables/Route-Rosteringarchivalfunction"
    service_endpoints = ["Microsoft.Storage"]
  }
  ]

tags = {
            "Application Name"  = "Rostima"
            "Application Owner" = "Hasaan Malik"
            "ENV"               = "PROD"
            "RITM"              = "RITM0028142"
}