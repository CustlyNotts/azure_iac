subscription_id     = <subscription_id>
name                                 = "mysql-shipx-metabase-nonprod"
resource_group_name                  = "rg-cargoesshipx-dev"
mysql_version                        = "8.0.21"
sku_name                             = "GP_Standard_D2ds_v4"
administrator_login                  = "mysqladmin"
delegated_subnet_id                  = "/subscriptions/96632dbd-22ee-4b2c-ad6c-23c7f44c4fd8/resourceGroups/rg-cargoesshipxdev-infra/providers/Microsoft.Network/virtualNetworks/vnet-cargoesshipx-dev/subnets/snet-mysql-dev"
private_dns_zone_name                = "privatelink.mysql.database.azure.com"
private_dns_zone_resource_group_name = "rg-cargoesshipxdev-infra"
auto_grow_enabled                    = true
iops                                 = "1000"
size_gb                              = "20"
mysql_flexible_databases = {
  #   "test" = {
  #     charset   = "utf8"
  #     collation = "utf8_unicode_ci"
  #   }
}
tags = {
  "Application Name" : "Shipx Prod",
  "Application Owner" : "Shiv Suthar",
  "ENV" : "Dev"
  "RITM": "RITM0091818"
}