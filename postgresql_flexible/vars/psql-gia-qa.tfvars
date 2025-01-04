subscription_id     = <subscription_id>
name                           = "psql-gia-qa"
resource_group_name            = "rg-gia-qa"
virtual_network                = "vnet-gia-qa"
virtual_network_resource_group = "rg-gia-qa"
subnet                         = "snet-gia-qa-psql"
postgresql_version             = "15"
sku_name                       = "B_Standard_B1ms"
administrator_login            = "psqladmin"
administrator_password         = "Admin@123456"
storage_mb                     = 32768
private_dns_zone_id            = ""
use_existing_dns               = false # use_existing_dns and delegated_subnet_id variables must be used if resource wasn't created by Terraform
delegated_subnet_id            = "/subscriptions/c1ed99db-01ec-4593-92d3-cf4a26a19555/resourceGroups/rg-gia-qa/providers/Microsoft.Network/virtualNetworks/vnet-gia-qa/subnets/snet-gia-qa-psql"
postgresql_flexible_databases = {
  #   "test" = {
  #     charset   = "utf8"
  #     collation = "utf8_unicode_ci"
  #   }
}
tags = {
  "Application Name" : "GIA",
  "Application Owner" : "Shaytel Patel",
  "ENV" : "QA"
  "Created By" : "Ayodele Orebe"
}