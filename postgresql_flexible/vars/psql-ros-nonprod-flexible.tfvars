subscription_id     = <subscription_id>
name                           = "psql-ros-nonprod-flexible"
resource_group_name            = "rg-ros-nonprod"
virtual_network                = "Vnet-ROS-NonProd"
virtual_network_resource_group = "rg-ros-nonprod"
subnet                         = "snet-ros-shared"
postgresql_version             = "11"
sku_name                       = "GP_Standard_D8ds_v5"
administrator_login            = "psqladmin"
administrator_password         = "Dpworld2022$$"
storage_mb                     = 131072
private_dns_zone_id            = "/subscriptions/3f73c166-e295-4b4f-a2bc-ef5a0a63b7a4/resourceGroups/rg-ros-nonprod/providers/Microsoft.Network/privateDnsZones/privatelink.postgres.database.azure.com"
use_existing_dns               = true
postgresql_flexible_databases = {
  #   "test" = {
  #     charset   = "utf8"
  #     collation = "utf8_unicode_ci"
  #   }
}
tags = {
  "Application Name" : "ROS",
  "Application Owner" : "Tapabrata Dasgupta",
  "ENV" : "DEV"
}