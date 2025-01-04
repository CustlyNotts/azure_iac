subscription_id     = <subscription_id>
name                           = "psql-ecommerce-prod"
resource_group_name            = "rg-ecommerce-prod"
virtual_network                = "vnet-ecommerce-prod"
virtual_network_resource_group = "rg-ecommerce-infra-prod"
subnet                         = "snet-ecommerce-flexibleserver-prod"
postgresql_version             = "14"
sku_name                       = "GP_Standard_D2s_v3"
administrator_login            = "psqladmin"
administrator_password         = "psAdmin@123456"
storage_mb                     = 262144
private_dns_zone_id            = ""
use_existing_dns               = false # use_existing_dns and delegated_subnet_id variables must be used if resource wasn't created by Terraform
delegated_subnet_id            = "/subscriptions/039efcb8-56e2-459b-ad3c-68c086e8feb9/resourceGroups/rg-ecommerce-infra-prod/providers/Microsoft.Network/virtualNetworks/vnet-ecommerce-prod/subnets/snet-ecommerce-prod"
postgresql_flexible_databases = {
  #   "test" = {
  #     charset   = "utf8"
  #     collation = "utf8_unicode_ci"
  #   }
}
tags = {
  "Application Owner" : "Arup Sarkar",
  "ENV" : "PROD",
  "Application Name" : "Ecommerce (Dubuy & DM)",
  "RITM" : "RITM0064165"
}