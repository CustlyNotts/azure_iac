subscription_id     = <subscription_id>
name                           = "psql-cargoesrunner-nonprod"
resource_group_name            = "rg_cargoesRunner_dev"
virtual_network                = "vnet-cargoesRunnernonprod"
virtual_network_resource_group = "rg_cargoesRunner_Vnet_nonprod"
subnet                         = "snet-postgresDB"
postgresql_version             = "14"
sku_name                       = "MO_Standard_E8ds_v5"
administrator_login            = "psqladmin"
administrator_password         = "Dpworld2022$$"
storage_mb                     = 524288
private_dns_zone_id            = "/subscriptions/99a847a3-1033-4a6d-a9bb-41a087e8c982/resourceGroups/rg_cargoesRunner_Vnet_nonprod/providers/Microsoft.Network/privateDnsZones/psql-cargoesrunner-nonprod.private.postgres.database.azure.com"
use_existing_dns               = true# use_existing_dns and delegated_subnet_id variables must be used if resource wasn't created by Terraform
delegated_subnet_id            = "/subscriptions/99a847a3-1033-4a6d-a9bb-41a087e8c982/resourceGroups/rg_cargoesRunner_Vnet_nonprod/providers/Microsoft.Network/virtualNetworks/vnet-cargoesRunnernonprod/subnets/snet-postgresDB"
postgresql_flexible_databases = {
  #   "test" = {
  #     charset   = "utf8"
  #     collation = "utf8_unicode_ci"
  #   }
}
tags = {
  "Application Name" : "Cargoes Runner",
  "Application Owner" : "Jabeer Yusuf",
  "ENV" : "DEV"
}