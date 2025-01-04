subscription_id     = <subscription_id>
name                           = "psql-trackingservice-nonprod"
resource_group_name            = "rg-trackingservice-dev"
virtual_network                = "Vnet-trackingservice-dev"
virtual_network_resource_group = "rg-trackingservice-dev-infra"
subnet                         = "snet-psql-trackingserver-dev"
postgresql_version             = "12"
sku_name                       = "GP_Standard_D2s_v3"
administrator_login            = "psqladmin"
administrator_password         = "r8b9Ll47O!@c"
storage_mb                     = 32768
private_dns_zone_id            = "/subscriptions/a7831bc0-3c70-4db7-95c4-62d614caf575/resourceGroups/rg-trackingservice-dev-infra/providers/Microsoft.Network/privateDnsZones/pg-trackingservice-nonprod.private.postgres.database.azure.com"
use_existing_dns               = true # use_existing_dns and delegated_subnet_id variables must be used if resource wasn't created by Terraform
delegated_subnet_id            = "/subscriptions/a7831bc0-3c70-4db7-95c4-62d614caf575/resourceGroups/rg-trackingservice-dev-infra/providers/Microsoft.Network/virtualNetworks/Vnet-trackingservice-dev/subnets/snet-psql-trackingserver-dev"
postgresql_flexible_databases = {
  #   "test" = {
  #     charset   = "utf8"
  #     collation = "utf8_unicode_ci"
  #   }
}
tags = {
  "Application Name" : "Tracking Service",
  "Application Owner" : "Jay Li/ Bittu Lal",
  "ENV" : "DEV"
}