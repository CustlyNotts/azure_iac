subscription_id     = <subscription_id>
name                = "mysql-infra-lab"
resource_group_name = "rg-infralab-network"
mysql_version       = "5.7"
sku_name            = "B_Standard_B2s"
administrator_login = "mysqladmin"
#fqdn = "mysql-meatest.mysql.database.azure.com"
delegated_subnet_id                  = "/subscriptions/ae354a06-c974-4fe3-89c1-663dd2830157/resourceGroups/rg-infralab-network/providers/Microsoft.Network/virtualNetworks/vnet-infralab/subnets/snet-mysql"
private_dns_zone_name                = "privatelink.mysql.database.azure.com"
private_dns_zone_resource_group_name = "rg-infralab-network"
auto_grow_enabled                    = true
iops                                 = "492"
size_gb                              = "64"
zone                                 = "3"
io_scaling_enabled                   = false
identity_type                        = "UserAssigned"

#############################################
#enable AD - Its enabled by default.
#aad_auth_enabled = true #to enable ad integration but its default
#identity_ids =  ["/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rg-dbmanagedidentities-prod/providers/Microsoft.ManagedIdentity/userAssignedIdentities/AAD-Auth-database-managedidentity"] #its added default


#disable AD
#aad_auth_enabled = false  #to disable ad integration
#identity_ids     = []   #when disable ad integration, you can set it to null
#############################################

mysql_flexible_databases = {
  #   "test" = {
  #     charset   = "utf8"
  #     collation = "utf8_unicode_ci"
  #   }
}
tags = {
  "RITM" : "RITM0053317",
  " ENV" : "TESTING",
  "Application Name" : "mea",
  "Application Owner" : "Vel",
  "ENV" : "TESTING",
  "scheduler" : "off=(M-F,21);on=(M-F,8);tz=Asia/Dubai"
}
