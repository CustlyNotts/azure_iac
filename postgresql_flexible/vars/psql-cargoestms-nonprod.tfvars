subscription_id     = <subscription_id>
name                           = "psql-cargoestms-nonprod"
resource_group_name            = "rg-cargoestms-nonprod"
virtual_network                = "vnet-cargoestms-nonprod"
virtual_network_resource_group = "rg-cargoestms-nonprod-infra"
subnet                         = "snet-cargoestms-nonprod-psql"
postgresql_version             = "15"
sku_name                       = "B_Standard_B1ms"
administrator_login            = "psqladmin"
administrator_password         = "Admin@123456"
storage_mb                     = 32768
private_dns_zone_id            = "/subscriptions/3ed00aa8-c4b8-49f3-8254-5f44946d0be0/resourceGroups/rg-cargoestms-nonprod-infra/providers/Microsoft.Network/privateDnsZones/privatelink.postgres.database.azure.com"
use_existing_dns               = true # use_existing_dns and delegated_subnet_id variables must be used if resource wasn't created by Terraform
delegated_subnet_id            = "/subscriptions/3ed00aa8-c4b8-49f3-8254-5f44946d0be0/resourceGroups/rg-cargoestms-nonprod-infra/providers/Microsoft.Network/virtualNetworks/vnet-cargoestms-nonprod/subnets/snet-cargoestms-nonprod-psql"
postgresql_flexible_databases = {
  #   "test" = {
  #     charset   = "utf8"
  #     collation = "utf8_unicode_ci"
  #   }
}
tags = {
  "Application Name" : "Cargoes Transportation Management System",
  "Application Owner" : "Shiv Suthar/Ritesh Singh",
  "ENV" : "Non Prod"
  "RITM" : "RITM0093064"
}