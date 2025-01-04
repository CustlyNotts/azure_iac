subscription_id     = <subscription_id>
name                           = "psql-blockchainuae-prod-flexible"
resource_group_name            = "rg-blockchain-prod"
virtual_network                = "vnet-blockchain-prod"
virtual_network_resource_group = "rg-blockchain-infra-prod"
subnet                         = "snet-nonaks-prod"
postgresql_version             = "11"
sku_name                       = "GP_Standard_D2s_v3"
administrator_login            = "psqladmin"
administrator_password         = "YWRtaW5AQ2FyZ29lc1BsYXRmb3JtUHJvZA=="
storage_mb                     = 32768
private_dns_zone_id            = null
#delegated_subnet_id            = "/subscriptions/3f73c166-e295-4b4f-a2bc-ef5a0a63b7a4/resourceGroups/rg-ros-prod/providers/Microsoft.Network/virtualNetworks/vnet-ros-prod/subnets/snet-ros-prod-psqlflexible"
use_existing_dns               = true
postgresql_flexible_databases = {
  #   "test" = {
  #     charset   = "utf8"
  #     collation = "utf8_unicode_ci"
  #   }
}
tags = {
  "Application Name" : "Datachain",
  "Application Owner" : "Jay Li / Jayakrishna Alwar",
  "ENV" : "Prod"
}