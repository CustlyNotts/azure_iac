#### IMPORT EXISTING PRIVATE ENDPOINT ####
subscription_id     = <subscription_id>
location                        = "UK South"
use_existing_dns                = true
private_endpoint_name           = "pvt-ep-customapp"
pe_resource_group_name          = "rg-cns-dev"
subnet_id                       = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/cnsnw/providers/Microsoft.Network/virtualNetworks/CNSNetwork/subnets/snet-cns-ep"
private_service_connection_name = "pvt-ep-customapp"
manual_connection               = false
pdz_name                        = ["privatelink.postgres.database.azure.com"]
private_dns_zone_group_name     = "default"
private_dns_zone_ids            = ["/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/cnsnw/providers/Microsoft.Network/privateDnsZones/privatelink.postgres.database.azure.com"]
pdz_resource_group_name         = ["cnsnw"]
pdz_link_name                   = ["2hdeglrgo2fke"]
vlink_tags                      = { "ENV" = "PROD" }
private_dns_tags                = { "ENV" = "PROD" }
virtual_network_id              = ["/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/cnsnw/providers/Microsoft.Network/virtualNetworks/CNSNetwork"]
linked_pdz_name                 = ["privatelink.postgres.database.azure.com"]
vlink_resource_group_name       = ["cnsnw"]
sub_resource_id                 = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/rg-cns-dev/providers/Microsoft.DBforPostgreSQL/servers/customapp"
sub_resource_names              = ["postgresqlServer"]
azure_private_dns_zone_name     = "privatelink.postgres.database.azure.com"
custom_network_interface_name   = "pvt-ep-customapp-nic"
#pdz_counter                     = 0
#vlink_counter                   = 0
tags = {

  "Application Name" : "Mawani",
  "Application Owner" : "Daniel Stuart",
  "ENV" : "DEV"
}
