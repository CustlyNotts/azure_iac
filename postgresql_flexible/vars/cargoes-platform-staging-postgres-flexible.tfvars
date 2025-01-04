subscription_id     = <subscription_id>
name                           = "cargoes-platform-staging-postgres-flexible"
resource_group_name            = "cargoes-staging"
virtual_network                = "cargoes-platform-cluster-staging-vnet"
virtual_network_resource_group = "cargoes-staging"
subnet                         = "cargoes-platform-staging-flexible"
postgresql_version             = "11"
sku_name                       = "MO_Standard_E8ds_v5"
administrator_login            = "CargoesPlatformStagingPostgresAdmin"
administrator_password         = "Dpworld2022$$"
storage_mb                     = 1048576
private_dns_zone_id            = "/subscriptions/3ddf2459-a8f6-4f71-9fa4-9b3479dbf234/resourceGroups/cargoes-staging/providers/Microsoft.Network/privateDnsZones/privatelink.postgres.database.azure.com"
use_existing_dns               = true
postgresql_flexible_databases = {
  #   "test" = {
  #     charset   = "utf8"
  #     collation = "utf8_unicode_ci"
  #   }
}
tags = {
  "Application Owner" : "Jay Li / Jayakrishna Alwar",
  "ENV" : "STAGING",
  "Application Name" : "Foundation Nonprod",
}