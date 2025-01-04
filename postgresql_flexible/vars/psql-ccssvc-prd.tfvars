subscription_id     = <subscription_id>
name                           = "psql-ccssvc-prd"
resource_group_name            = "rg-cargoescustoms-svc-prod"
virtual_network                = "vnet-cargoescustoms-svc-prod"
virtual_network_resource_group = "rg-cargoescustoms-svc-infra-prod"
subnet                         = "snet-psql-cargoescustoms-svc-prd"
postgresql_version             = "11"
sku_name                       = "GP_Standard_D4s_v3"
administrator_login            = "psqladmin"
administrator_password         = "ChangeMe!!!"
storage_mb                     = 262144
private_dns_zone_id            = "/subscriptions/cf524703-9d5e-4aa2-bbe9-975fe083f66a/resourceGroups/rg-dnsdomains/providers/Microsoft.Network/privateDnsZones/privatelink.postgres.database.azure.com"
use_existing_dns               = true # use_existing_dns and delegated_subnet_id variables must be used if resource wasn't created by Terraform
delegated_subnet_id            = "/subscriptions/3b33091e-1cdc-4ea3-a1a9-112226376c1b/resourceGroups/rg-cargoescustoms-svc-infra-prod/providers/Microsoft.Network/virtualNetworks/vnet-cargoescustoms-svc-prod/subnets/snet-psql-cargoescustoms-svc-prd"
postgresql_flexible_databases = {
  #   "test" = {
  #     charset   = "utf8"
  #     collation = "utf8_unicode_ci"
  #   }
}
tags = {
  "Application Name": "Cargoes Customs",
        "Application Owner": "Vijahat Trunboo",
        "ENV": "PROD"
}