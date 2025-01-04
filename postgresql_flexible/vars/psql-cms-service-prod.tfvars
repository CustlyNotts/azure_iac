subscription_id     = <subscription_id>
name                           = "psql-cms-service-prod"
resource_group_name            = "rg_cargoesRunner_prod"
virtual_network                = "vnet-cargoesRunnerprod"
virtual_network_resource_group = "rg_cargoesRunner_Vnet_prod"
subnet                         = "snet-postgresDB"
postgresql_version             = "14"
sku_name                       = "GP_Standard_D2ds_v4"
administrator_login            = "psqladmin"
administrator_password         = "Dpworld2022$$"
storage_mb                     = 65536
private_dns_zone_id            = "/subscriptions/99a847a3-1033-4a6d-a9bb-41a087e8c982/resourceGroups/rg_cargoesRunner_Vnet_prod/providers/Microsoft.Network/privateDnsZones/psql-cms-service-prod.private.postgres.database.azure.com"
use_existing_dns               = true# use_existing_dns and delegated_subnet_id variables must be used if resource wasn't created by Terraform
delegated_subnet_id            = "/subscriptions/99a847a3-1033-4a6d-a9bb-41a087e8c982/resourceGroups/rg_cargoesRunner_Vnet_prod/providers/Microsoft.Network/virtualNetworks/vnet-cargoesRunnerprod/subnets/snet-postgresDB"
postgresql_flexible_databases = {
  #   "test" = {
  #     charset   = "utf8"
  #     collation = "utf8_unicode_ci"
  #   }
}
tags = {
  "Application Name" : "Cargoes Runner",
  "Application Owner" : "Jabeer Yusuf",
  "ENV" : "PROD"
}