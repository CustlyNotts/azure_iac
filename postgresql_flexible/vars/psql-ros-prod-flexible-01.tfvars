subscription_id     = <subscription_id>
name                           = "psql-ros-prod-flexible-01"
resource_group_name            = "rg-ros-prod"
virtual_network                = "vnet-ros-prod"
virtual_network_resource_group = "rg-ros-prod"
subnet                         = "snet-ros-prod-psqlflexible"
postgresql_version             = "11"
sku_name                       = "GP_Standard_D8ds_v5"
administrator_login            = "psqladmin"
administrator_password         = "Dpworld2024$$"
storage_mb                     = 32768
private_dns_zone_id            = null
#delegated_subnet_id            = "/subscriptions/3f73c166-e295-4b4f-a2bc-ef5a0a63b7a4/resourceGroups/rg-ros-prod/providers/Microsoft.Network/virtualNetworks/vnet-ros-prod/subnets/snet-ros-prod-psqlflexible"
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
  "ENV" : "Prod"
}