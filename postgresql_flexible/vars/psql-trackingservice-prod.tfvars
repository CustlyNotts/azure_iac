subscription_id     = <subscription_id>
name                           = "psql-trackingservice-prod"
resource_group_name            = "rg-trackingservice-prod"
virtual_network                = "Vnet-trackingservice-prod"
virtual_network_resource_group = "rg-cargoestrackingservice-infra-prod"
subnet                         = "snet-postgresflexibleserver-prod"
postgresql_version             = "12"
sku_name                       = "GP_Standard_D2ds_v4"
administrator_login            = "psqladmin"
administrator_password         = "cG@urCmaDxUAgL4qZX8n"
storage_mb                     = 131072
private_dns_zone_id            = "/subscriptions/a7831bc0-3c70-4db7-95c4-62d614caf575/resourceGroups/rg-cargoestrackingservice-infra-prod/providers/Microsoft.Network/privateDnsZones/psql-trackingservice-prod.private.postgres.database.azure.com"
use_existing_dns               = true # use_existing_dns and delegated_subnet_id variables must be used if resource wasn't created by Terraform
delegated_subnet_id            = "/subscriptions/a7831bc0-3c70-4db7-95c4-62d614caf575/resourceGroups/rg-cargoestrackingservice-infra-prod/providers/Microsoft.Network/virtualNetworks/Vnet-trackingservice-prod/subnets/snet-postgresflexibleserver-prod"
postgresql_flexible_databases = {
  #   "test" = {
  #     charset   = "utf8"
  #     collation = "utf8_unicode_ci"
  #   }
}
tags = {
  "Application Name" : "Tracking Service",
  "Application Owner" : "Jay Li/ Bittu Lal",
  "ENV" : "PROD"
}