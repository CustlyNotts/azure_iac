#### IMPORT EXISTING PRIVATE ENDPOINT ####
subscription_id     = <subscription_id>
location                        = "UK West"
use_existing_dns                = true
private_endpoint_name           = "ep-mysql-cnsdrprod"
pe_resource_group_name          = "rg-cnsdr"
subnet_id                       = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/rg-cnsdr/providers/Microsoft.Network/virtualNetworks/vnet-cnsdr/subnets/snet-cnsdr-ep"
private_service_connection_name = "ep-mysql-cnsdrprod"
vlink_tags                      = { "ENV" = "DR" }
private_dns_tags                = { "ENV" = "DR" }
manual_connection               = false
pdz_name                        = ["privatelink.mysql.database.azure.com"]
private_dns_zone_group_name     = "default"
private_dns_zone_ids            = ["/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/rg-cnsdr/providers/Microsoft.Network/privateDnsZones/privatelink.mysql.database.azure.com"]
pdz_resource_group_name         = ["rg-cnsdr"]
pdz_link_name                   = ["b4nn2252xa3em"]
virtual_network_id              = ["/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/rg-cnsdr/providers/Microsoft.Network/virtualNetworks/vnet-cnsdr"]
linked_pdz_name                 = ["privatelink.mysql.database.azure.com"]
vlink_resource_group_name       = ["rg-cnsdr"]
sub_resource_id                 = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/rg-cnsprod/providers/Microsoft.DBforMySQL/servers/mysql-cnsprod"
sub_resource_names              = ["mysqlServer"]
azure_private_dns_zone_name     = "privatelink.mysql.database.azure.com"
custom_network_interface_name   = ""
#pdz_counter                     = 0
#vlink_counter                   = 0
tags = {

  "Application Name" : "Mawani CNS",
  "Application Owner" : "Daniel/Sachin",
  "ENV" : "PROD"
}
