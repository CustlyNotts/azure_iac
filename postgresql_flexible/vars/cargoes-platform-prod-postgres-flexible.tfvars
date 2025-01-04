subscription_id     = <subscription_id>
name                           = "cargoes-platform-prod-postgres-flexible"
resource_group_name            = "cargoes-prod"
virtual_network                = "cargoes-platform-cluster-prod-vnet"
virtual_network_resource_group = "cargoes-prod"
subnet                         = "cargoes-platform-cluster-subnet-private-lb"
postgresql_version             = "11"
sku_name                       = "MO_Standard_E8ds_v5"
administrator_login            = "CargoesPlatformStagingPostgresAdmin"
administrator_password         = "Dpworld2022$$"
storage_mb                     = 2097152
private_dns_zone_id            = null
#delegated_subnet_id            = "/subscriptions/368014ab-c35d-4615-a165-842d87aec6f5/resourceGroups/cargoes-prod/providers/Microsoft.Network/virtualNetworks/cargoes-platform-cluster-prod-vnet/subnets/cargoes-platform-cluster-subnet-private-lb"
use_existing_dns               = true
postgresql_flexible_databases = {
  #   "test" = {
  #     charset   = "utf8"
  #     collation = "utf8_unicode_ci"
  #   }
}
tags = {
  "Application Owner" : "Jay Li / Jayakrishna Alwar",
  "ENV" : "PROD",
  "Application Name" : "Foundation Nonprod",
}