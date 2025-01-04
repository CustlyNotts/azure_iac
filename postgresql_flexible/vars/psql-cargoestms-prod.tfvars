subscription_id     = <subscription_id>
name                           = "psql-cargoestms-prod"
resource_group_name            = "rg-cargoestms-prod"
virtual_network                = "vnet-cargoestms-prod"
virtual_network_resource_group = "rg-cargoestms-prod-infra"
subnet                         = "snet-cargoestms-prod"
postgresql_version             = "15"
sku_name                       = "B_Standard_B1ms"
administrator_login            = "psqladmin"
administrator_password         = "$ql@dmin2090$"
storage_mb                     = 32768
private_dns_zone_id            = "/subscriptions/02b7a2b2-a969-4817-ad92-6f26a5c7afd0/resourceGroups/rg-wms-infra-nonprod/providers/Microsoft.Network/privateDnsZones/privatelink.postgres.database.azure.com"
use_existing_dns               = true
postgresql_flexible_databases = {
  #   "test" = {
  #     charset   = "utf8"
  #     collation = "utf8_unicode_ci"
  #   }
}
tags = {
  "Application Owner" : "Shiv Suthar/Ritesh Singh",
  "ENV" : "PROD",
  "Application Name" : "Transportation Management System"
}