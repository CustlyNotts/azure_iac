subscription_id     = <subscription_id>
name                           = "psql-devops-prod"
resource_group_name            = "rg-infrateam"
virtual_network                = "vnet-infrateam"
virtual_network_resource_group = "rg-infrateam"
subnet                         = "snet-psql-devops"
postgresql_version             = "15"
sku_name                       = "GP_Standard_D2s_v3"
administrator_login            = "psqladmin"
administrator_password         = "Admin@123456"
storage_mb                     = 262144
private_dns_zone_id            = "/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rg-infrateam/providers/Microsoft.Network/privateDnsZones/privatelink.postgres.database.azure.com"
delegated_subnet_id            = "/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rg-infrateam/providers/Microsoft.Network/virtualNetworks/vnet-infrateam/subnets/snet-psql-devops"
postgresql_flexible_databases = {
  "devops" = {
     charset   = "utf8"
     collation = "en_US.utf8"
     }
}
tags = {
  "Application Owner" : "Devops Team",
  "Application Name" : "Devops Internal",
  "ENV" : "prod"
}
