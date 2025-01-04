#### IMPORT EXISTING PRIVATE ENDPOINT ####
subscription_id     = <subscription_id>
location                        = "UK South"
use_existing_dns                = true
private_endpoint_name           = "ep-psqlcargoesapp-prod"
pe_resource_group_name          = "rg-cargoesapp-prod"
subnet_id                       = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/cnsnw/providers/Microsoft.Network/virtualNetworks/CNSNetwork/subnets/snet-cnsprod"
private_service_connection_name = "ep-psqlcargoesapp-prod"
vlink_tags                      = { "ENV" = "PROD" }
private_dns_tags                = { "ENV" = "PROD" }
manual_connection               = false
pdz_name                        = ["privatelink.postgres.database.azure.com"]
private_dns_zone_group_name     = "default"
private_dns_zone_ids            = ["/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/cnsnw/providers/Microsoft.Network/privateDnsZones/privatelink.postgres.database.azure.com"]
pdz_resource_group_name         = ["cnsnw"]
pdz_link_name                   = ["2hdeglrgo2fke"]
virtual_network_id              = ["/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/cnsnw/providers/Microsoft.Network/virtualNetworks/CNSNetwork"]
linked_pdz_name                 = ["privatelink.postgres.database.azure.com"]
vlink_resource_group_name       = ["cnsnw"]
sub_resource_id                 = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/Rg-Cargoesapp-Prod/providers/Microsoft.DBforPostgreSQL/servers/db-cargoesapp-prod"
sub_resource_names              = ["postgresqlServer"]
azure_private_dns_zone_name     = "privatelink.postgres.database.azure.com"
custom_network_interface_name   = "ep-psqlcargoesapp-prod-nic"
#pdz_counter                     = 0
#vlink_counter                   = 0
tags = {

  "Application Name" : "Mawani CNS",
  "Application Owner" : "Daniel Stuart",
  "ENV" : "PROD"
}

ip_configuration = {
  member_name        = "postgresqlServer"
  name               = "psqlcargoesapp-prod"
  private_ip_address = "172.22.96.230"
  subresource_name   = "postgresqlServer"
}