subscription_id     = <subscription_id>
resource_group_name = "rg-network-nonprod"
name                = "vnet-metaverse-nonprod"
address_space       = ["10.148.0.0/18"]
subnets = [
  {
    name             = "snet-metaverse-nonprod"
    address_prefixes = ["10.148.0.0/23"]
    route_table_id   = "/subscriptions/64c0b6b8-a619-421a-941d-8feb2e48de4f/resourceGroups/rg-network-nonprod/providers/Microsoft.Network/routeTables/rt-metaverse-nonprod"
  },
  {
    name             = "snet-aksmetaverse-nonprod"
    address_prefixes = ["10.148.8.0/21"]
  },
  {
    name             = "snet-psqlflexible-nonprod"
    address_prefixes = ["10.148.2.0/25"]
    delegation       = "Microsoft.DBforPostgreSQL/flexibleServers"
  }

]