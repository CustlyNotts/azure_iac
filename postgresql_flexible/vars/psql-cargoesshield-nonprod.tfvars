subscription_id     = <subscription_id>
name                           = "psql-cargoesshield-nonprod"
resource_group_name            = "rg-cargoesshield-nonprod"
virtual_network                = "vnet-cargoesshield-nonprod"
virtual_network_resource_group = "rg-cargoesshield-infra-nonprod"
subnet                         = "snet-psql-cargoesshield-nonprod"
postgresql_version             = "11"
sku_name                       = "GP_Standard_D4ds_v4"
administrator_login            = "psqladmin"
administrator_password         = "$ql@dmin2090$"
storage_mb                     = 262144
postgresql_flexible_databases = {
  #   "test" = {
  #     charset   = "utf8"
  #     collation = "utf8_unicode_ci"
  #   }
}
tags = {
  "Application Owner" : "Ritesh Singh",
  "ENV" : "NONPROD",
  "Application Name" : "CargoesShield",
  "RITM" : "RITM0063496"
}