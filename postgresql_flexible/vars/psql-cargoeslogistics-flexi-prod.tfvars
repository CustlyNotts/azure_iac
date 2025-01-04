subscription_id     = <subscription_id>
name                           = "psql-cargoeslogistics-flexi-prod"
resource_group_name            = "rg-cargoeslogistics-prod"
virtual_network                = "vnet-cargoeslogistics-prod"
virtual_network_resource_group = "rg-cargoeslogistics-infra-prod"
subnet                         = "snet-psqlflexibleserver-prod"
postgresql_version             = "11"
public_network_access_enabled =true
sku_name                       = "GP_Standard_D8ds_v4"
administrator_login            = "psqladmin"
administrator_password         = "vWAHeWJgzTh4"
storage_mb                     = 262144
private_dns_zone_id            = "/subscriptions/a3e25ce2-341c-4f68-b42d-0ec5f349a526/resourceGroups/rg-cargoeslogistics-prod/providers/Microsoft.Network/privateDnsZones/psql-cargoeslogistics-flexi-prod.private.postgres.database.azure.com"
use_existing_dns               = true # use_existing_dns and delegated_subnet_id variables must be used if resource wasn't created by Terraform
delegated_subnet_id            = "/subscriptions/a3e25ce2-341c-4f68-b42d-0ec5f349a526/resourceGroups/rg-cargoeslogistics-infra-prod/providers/Microsoft.Network/virtualNetworks/vnet-cargoesLogisitics-prod/subnets/snet-psqlflexibleserver-prod"
postgresql_flexible_databases = {
  #   "test" = {
  #     charset   = "utf8"
  #     collation = "utf8_unicode_ci"
  #   }
}
tags = {
  "Application Name" : "Cargoes Logistics",
  "Application Owner" : "Utkarsh Kulshetra",
  "ENV" : "PROD"
}