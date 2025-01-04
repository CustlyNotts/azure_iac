subscription_id     = <subscription_id>
name                           = "pg-wms-nonprod"
resource_group_name            = "rg-wms-nonprod"
virtual_network                = "vnet-wms-nonprod"
virtual_network_resource_group = "rg-wms-infra-nonprod"
subnet                         = "snet-wms-nonprod"
postgresql_version             = "16"
sku_name                       = "B_Standard_B2s"
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
  "Application Owner" : "Sandeep Gupta",
  "ENV" : "NONPROD",
  "Application Name" : "Warehouse Management System",
  "RITM" : "RITM0097856"
}