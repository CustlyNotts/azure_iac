subscription_id     = <subscription_id>
name                           = "psql-cargoesshield-prod"
resource_group_name            = "rg-cargoesshield-prod"
virtual_network                = "vnet-cargoesshield-prod"
virtual_network_resource_group = "rg-cargoesshield-infra-prod"
subnet                         = "snet-psql-cargoesshield-prod"
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
  "ENV" : "PROD",
  "Application Name" : "CargoesShield",
  "RITM" : "RITM0063496"
}