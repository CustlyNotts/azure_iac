subscription_id     = <subscription_id>
name                                 = "mysql-cargoscanadaprod-dr"
resource_group_name                  = "rg-cargoescanada-prod"
mysql_version                        = "5.7"
location = "canadaeast"
sku_name                             = "GP_Standard_D4ads_v5"
administrator_login                  = "mysqladmin"
delegated_subnet_id                  = "/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/RG-cargoescanadaprod-DR/providers/Microsoft.Network/virtualNetworks/VNET-cargoescanadaprod-DR/subnets/snet-cargoescanadaDR-PVTendpoint"
private_dns_zone_name                = "privatelink.mysql.database.azure.com"
private_dns_zone_resource_group_name = "rg-cargoescanada-prod"
iops                                 = "492"
auto_grow_enabled                    = true
size_gb                              = "64"
io_scaling_enabled = true
#zone                          = "2" 
maintenance_window = {
      day_of_week  = 0 
      start_hour   = 8 
      start_minute = 0
  }
        

mysql_flexible_databases = {
  #   "test" = {
  #     charset   = "utf8"
  #     collation = "utf8_unicode_ci"
  #   }
}


identity_type = "UserAssigned"
identity_ids = ["/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rg-dbmanagedidentities-prod/providers/Microsoft.ManagedIdentity/userAssignedIdentities/AAD-Auth-database-managedidentity"]

tags = {
        "Application Name": "Cargoes Canada ",
        "Application Owner": "Daniel Stuart",
        "ENV": "PROD"
}