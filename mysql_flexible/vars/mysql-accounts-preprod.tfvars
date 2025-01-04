subscription_id     = <subscription_id>
name                                 = "mysql-accounts-preprod"
resource_group_name                  = "rg-accountspreprod"
mysql_version                        = "5.7"
sku_name                             = "B_Standard_B2s"
administrator_login                  = "mysqladmin"
delegated_subnet_id                  = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-accountspreprod/providers/Microsoft.Network/virtualNetworks/vnet-accounts-preprod/subnets/snet-common-flex"
private_dns_zone_name                = "privatelink.mysql.database.azure.com"
private_dns_zone_resource_group_name = "rg-accountspreprod"
auto_grow_enabled                    = false
iops                                 = "492"
size_gb                              = "64"
mysql_flexible_databases = {
  #   "test" = {
  #     charset   = "utf8"
  #     collation = "utf8_unicode_ci"
  #   }
}
tags = {
  "Application Name" : "Accounts",
  "Application Owner" : "Daniel Stuart",
  "ENV" : "PREPROD"
}