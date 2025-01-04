subscription_id     = <subscription_id>
name                           = "psql-metaverse-prod"
resource_group_name            = "rg-metaverse-prod"
virtual_network                = "vnet-metaverse-prod"
virtual_network_resource_group = "rg-metaverse-prod"
subnet                         = "snet-psqlflexible-prod"
postgresql_version             = "15"
sku_name                       = "B_Standard_B1ms"
administrator_login            = "psqladmin"
administrator_password         = "Admin@123456"
storage_mb                     = 32768
private_dns_zone_id            = ""
use_existing_dns               = false # use_existing_dns and delegated_subnet_id variables must be used if resource wasn't created by Terraform
delegated_subnet_id            = "/subscriptions/64c0b6b8-a619-421a-941d-8feb2e48de4f/resourceGroups/rg-metaverse-prod/providers/Microsoft.Network/virtualNetworks/vnet-metaverse-prod/subnets/snet-psqlflexible-prod"
postgresql_flexible_databases = {
  #   "test" = {
  #     charset   = "utf8"
  #     collation = "utf8_unicode_ci"
  #   }
}
tags = {
  "Application Name" : "Metaverse",
  "Application Owner" : "Harsh Jain",
  "ENV" : "PROD"
  "Created By" : "Bastian Joe"
}