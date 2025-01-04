subscription_id     = <subscription_id>
resource_group_name = "Rg-Rostima-DR"
name                = "Vnet-Rostima-DR"
address_space       = ["10.154.16.0/24"]
create_default_peerings = false
subnets = [
  {
    name             = "Snet_Rostima_DR"
    address_prefixes = ["10.154.16.0/25"]
    route_table_id   = "/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/Rg-Rostima-DR/providers/Microsoft.Network/routeTables/Route_Rostima_DR"
  }
  ]

