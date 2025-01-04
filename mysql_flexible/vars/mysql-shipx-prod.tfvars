subscription_id     = <subscription_id>
name                                 = "mysql-shipx-prod"
resource_group_name                  = "rg-cargoesshipx-prod"
mysql_version                        = "5.7"
sku_name                             = "GP_Standard_D8ds_v4"
administrator_login                  = "mysqladmin"
delegated_subnet_id                  = "/subscriptions/96632dbd-22ee-4b2c-ad6c-23c7f44c4fd8/resourceGroups/rg-cargoesshipxprod-infra/providers/Microsoft.Network/virtualNetworks/vnet-cargoesshipx-prod/subnets/snet-shipx-mysql-prod"
private_dns_zone_name                = "privatelink.mysql.database.azure.com"
private_dns_zone_resource_group_name = "rg-cargoesshipxprod-infra"
auto_grow_enabled                    = true
iops                                 = "1000"
size_gb                              = "350"
mysql_flexible_databases = {
  #   "test" = {
  #     charset   = "utf8"
  #     collation = "utf8_unicode_ci"
  #   }
}
tags = {
  "Application Name" : "Shipx Prod",
  "Application Owner" : "Shiv Suthar",
  "ENV" : "PROD"
}