subscription_id     = <subscription_id>
location                        = "UAE North"
use_existing_dns                = true
private_endpoint_name           = "pe-psql-cargoestms-prod"
pe_resource_group_name          = "rg-cargoestms-prod-infra"
subnet_id                       = "/subscriptions/3ed00aa8-c4b8-49f3-8254-5f44946d0be0/resourceGroups/rg-cargoestms-prod-infra/providers/Microsoft.Network/virtualNetworks/vnet-cargoestms-prod/subnets/snet-cargoestms-prod"
private_service_connection_name = "pe-psql-cargoestms-prod"
manual_connection               = false
pdz_name                        = ["privatelink.postgres.database.azure.com"]
private_dns_zone_group_name     = "default"
private_dns_zone_ids            = ["/subscriptions/3ed00aa8-c4b8-49f3-8254-5f44946d0be0/resourceGroups/rg-cargoestms-prod-infra/providers/Microsoft.Network/privateDnsZones/privatelink.postgres.database.azure.com"]
pdz_resource_group_name         = ["rg-cargoestms-prod-infra"]
pdz_link_name                   = ["psql-cargoestms-prod"]
virtual_network_id              = ["/subscriptions/3ed00aa8-c4b8-49f3-8254-5f44946d0be0/resourceGroups/rg-cargoestms-prod-infra/providers/Microsoft.Network/virtualNetworks/vnet-cargoestms-prod"]
linked_pdz_name                 = ["privatelink.postgres.database.azure.com"]
vlink_resource_group_name       = ["rg-cargoestms-prod-infra"]
sub_resource_id                 = "/subscriptions/3ed00aa8-c4b8-49f3-8254-5f44946d0be0/resourceGroups/rg-cargoestms-prod/providers/Microsoft.DBforPostgreSQL/flexibleServers/psql-cargoestms-prod"
sub_resource_names              = ["postgresqlServer"]
azure_private_dns_zone_name     = "privatelink.postgres.database.azure.com"
custom_network_interface_name   = ""
#pdz_counter                     = 0
#vlink_counter                   = 0
tags = {
  "Application Owner" : "Shiv Suthar/Ritesh Singh",
  "ENV" : "PROD",
  "Application Name" : "Transportation Management System"
}