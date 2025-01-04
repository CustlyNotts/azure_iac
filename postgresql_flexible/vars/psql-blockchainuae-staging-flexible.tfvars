subscription_id     = <subscription_id>
name                           = "psql-blockchainuae-staging-flexible"
resource_group_name            = "rg-BlockchainUAEstaging"
virtual_network                = "vnet-BlockchainUAE-staging"
virtual_network_resource_group = "rg-BlockchainUAEstaging"
subnet                         = "snet-blockchain"
postgresql_version             = "11"
sku_name                       = "GP_Standard_D2s_v3"
administrator_login            = "blockchainadmin"
administrator_password         = "hqbXvG.9m_Bn"
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
  "ENV" : "Non-Prod"
}