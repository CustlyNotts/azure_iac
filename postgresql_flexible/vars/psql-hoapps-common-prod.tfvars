subscription_id     = <subscription_id>
name                           = "psql-hoapps-common-prod"
resource_group_name            = "rg-hoapps-common-prod"
virtual_network                = "vnetdpwglb"
virtual_network_resource_group = "rgvnet"
subnet                         = "snet-psql-hoapps-common-prod"
postgresql_version             = "11"
sku_name                       = "GP_Standard_D4s_v3"
administrator_login            = "psqladmin"
administrator_password         = "$ql@dmin2090$"
storage_mb                     = 131072
private_dns_zone_id            = ""
use_existing_dns               = false
delegated_subnet_id            = "/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rgvnet/providers/Microsoft.Network/virtualNetworks/vnetdpwglb/subnets/snet-psql-hoapps-common-prod"
postgresql_flexible_databases = {
  #   "test" = {
  #     charset   = "utf8"
  #     collation = "utf8_unicode_ci"
  #   }
}
tags = {
  "Application Name" : "Ho Apps Common Services",
  "Application Owner" : "Shabih Ahmed",
  "ENV" : "PROD"
  "RITM" : "RITM0087095"
}