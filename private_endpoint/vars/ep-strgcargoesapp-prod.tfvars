#### IMPORT EXISTING PRIVATE ENDPOINT ####
subscription_id     = <subscription_id>
location                        = "UK South"
use_existing_dns                = true
private_endpoint_name           = "ep-strgcargoesapp-prod"
pe_resource_group_name          = "rg-cargoesapp-prod"
subnet_id                       = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/cnsnw/providers/Microsoft.Network/virtualNetworks/CNSNetwork/subnets/snet-cnsprod"
private_service_connection_name = "ep-strgcargoesapp-prod"
manual_connection               = false
pdz_name                        = ["privatelink.file.core.windows.net"]
private_dns_zone_group_name     = "default"
private_dns_zone_ids            = ["/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/cnsnw/providers/Microsoft.Network/privateDnsZones/privatelink.file.core.windows.net"]
pdz_resource_group_name         = ["cnsnw"]
pdz_link_name                   = ["2hdeglrgo2fke"]
virtual_network_id              = ["/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/cnsnw/providers/Microsoft.Network/virtualNetworks/CNSNetwork"]
linked_pdz_name                 = ["privatelink.file.core.windows.net"]
vlink_resource_group_name       = ["cnsnw"]
vlink_tags                      = { "ENV" = "PROD" }
private_dns_tags                = { "ENV" = "PROD" }
sub_resource_id                 = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/Rg-Cargoesapp-Prod/providers/Microsoft.Storage/storageAccounts/stcargoesappprod"
sub_resource_names              = ["file"]
azure_private_dns_zone_name     = "privatelink.file.core.windows.net"
custom_network_interface_name   = ""
#pdz_counter                     = 0
#vlink_counter                   = 0
tags = {

  "Application Name" : "Mawani CNS",
  "Application Owner" : "Daniel Stuart",
  "ENV" : "PROD"
}
