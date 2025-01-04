subscription_id     = <subscription_id>
name                                 = "mysql-cargoescanada-stg"
resource_group_name                  = "rg-cargoescanadastg"
mysql_version                        = "5.7"
sku_name                             = "B_Standard_B2s"
administrator_login                  = "mysqladmin"
delegated_subnet_id                  = "/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/rg-cargoescanadastg/providers/Microsoft.Network/virtualNetworks/vnet-cargoescanadastg/subnets/snet-common-flex"
private_dns_zone_name                = "privatelink.mysql.database.azure.com"
private_dns_zone_resource_group_name = "rg-cargoscanada-test"
iops                                 = "492"
auto_grow_enabled                    = true
size_gb                              = "64"
io_scaling_enabled = true
zone                          = "2" 

mysql_flexible_databases = {
  #   "test" = {
  #     charset   = "utf8"
  #     collation = "utf8_unicode_ci"
  #   }
}


identity_type = "UserAssigned"
identity_ids = ["/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rg-dbmanagedidentities-prod/providers/Microsoft.ManagedIdentity/userAssignedIdentities/AAD-Auth-database-managedidentity"]

tags = {
    "Application Name": "Cargoes Canada",
    "Application Owner": "Daniel Stuart",
    "ENV": "DEV",
    "scheduler": " off=(M-S,8);on=(M-F,19);tz=Asia/Dubai"
}