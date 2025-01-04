#### IMPORT EXISTING PRIVATE ENDPOINT ####
subscription_id     = <subscription_id>
location                        = "UK South"
use_existing_dns                = true
private_endpoint_name           = "ep-cnsrundeck-prod"
pe_resource_group_name          = "rg-cnsrundeck-prod"
subnet_id                       = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/cnsnw/providers/Microsoft.Network/virtualNetworks/CNSNetwork/subnets/snet-cns-ep"
private_service_connection_name = "ep-cnsrundeck-prod"
manual_connection               = false
pdz_name                        = ["privatelink.mysql.database.azure.com"]
private_dns_zone_group_name     = "default"
private_dns_tags                = { "ENV" : "PROD" }
private_dns_zone_ids            = ["/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/rg-cnspriendpoint/providers/Microsoft.Network/privateDnsZones/privatelink.mysql.database.azure.com"]
pdz_resource_group_name         = ["rg-cnspriendpoint"]
pdz_link_name                   = ["2hdeglrgo2fke"]
vlink_tags                      = { "ENV" : "PROD" }
virtual_network_id              = ["/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/cnsnw/providers/Microsoft.Network/virtualNetworks/CNSNetwork"]
linked_pdz_name                 = ["privatelink.mysql.database.azure.com"]
vlink_resource_group_name       = ["rg-cnspriendpoint"]
sub_resource_id                 = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/rg-cnsrundeck-prod/providers/Microsoft.DBforMySQL/servers/mysql-cnsrundeck-prod"
sub_resource_names              = ["mysqlServer"]
azure_private_dns_zone_name     = "privatelink.mysql.database.azure.com"
custom_network_interface_name   = "ep-cnsrundeck-prod-nic"
#pdz_counter                     = 0
#vlink_counter                   = 0

tags = {
  "Application Name" : "rundeck",
  "Application Owner" : "Daniel.Stuart@dtworld.ae/Pradeesh.raju@dtworld.ae/Linu",
  "ENV" : "PROD"
}