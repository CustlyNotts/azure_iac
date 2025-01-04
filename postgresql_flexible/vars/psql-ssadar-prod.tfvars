subscription_id     = <subscription_id>
name                           = "psql-ssadar-prod"
resource_group_name            = "rg-ssadar-prod"
virtual_network                = "vnet-ssadar-prod"
virtual_network_resource_group = "rg-ssadar-infra-prod"
subnet                         = "snet-psql-ssadar-prod"
postgresql_version             = "16"
sku_name                       = "GP_Standard_D4s_v3"
administrator_login            = "psqladmin"
administrator_password         = "$ql@dmin2090$"
storage_mb                     = 131072
private_dns_zone_id            = ""
use_existing_dns               = false
delegated_subnet_id            = "/subscriptions/838e01d7-5d0b-4cdb-b7ad-b813642d0533/resourceGroups/rg-ssadar-infra-prod/providers/Microsoft.Network/virtualNetworks/vnet-ssadar-prod/subnets/snet-psql-ssadar-prod"
postgresql_flexible_databases = {
  #   "test" = {
  #     charset   = "utf8"
  #     collation = "utf8_unicode_ci"
  #   }
}
tags = {
  "Application Owner" : "Senthoor Ramasamy",
  "ENV" : "PROD",
  "Application Name" : "SSA DAR",
  "RITM" : "RITM0090031"
}