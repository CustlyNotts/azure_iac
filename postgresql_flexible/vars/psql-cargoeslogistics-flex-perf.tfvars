subscription_id     = <subscription_id>
name                           = "psql-cargoeslogistics-perf"
resource_group_name            = "rg-cargoesLogisticsplatform-DEV"
virtual_network                = "vnet-cargoesLogisitics_dev"
virtual_network_resource_group = "rg-cargoeslogisticsdev-infra"
subnet                         = "snet-psqlflexibleserver-nonprod"
postgresql_version             = "11"
sku_name                       = "B_Standard_B8ms"
administrator_login            = "psqladmin"
administrator_password         = "Admin@123456"
storage_mb                     = 32768
private_dns_zone_id            = ""
use_existing_dns               = false # use_existing_dns and delegated_subnet_id variables must be used if resource wasn't created by Terraform
delegated_subnet_id            = "/subscriptions/a3e25ce2-341c-4f68-b42d-0ec5f349a526/resourceGroups/rg-cargoeslogisticsdev-infra/providers/Microsoft.Network/virtualNetworks/vnet-cargoesLogisitics_dev/subnets/snet-psqlflexibleserver-nonprod"
postgresql_flexible_databases = {
  #   "test" = {
  #     charset   = "utf8"
  #     collation = "utf8_unicode_ci"
  #   }
}
tags = {
  "Application Name" : "Cargoes Logistics",
  "Application Owner" : "Utkarsh Kulshethra",
  "ENV" : "NonProd"
  "Created By" : "Saikrishnan Sreekumar"
}