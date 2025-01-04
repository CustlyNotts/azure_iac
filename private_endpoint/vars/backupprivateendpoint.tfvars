#### IMPORT EXISTING PRIVATE ENDPOINT ####
subscription_id     = <subscription_id>
location                        = "UK South"
use_existing_dns                = true
private_endpoint_name           = "backupprivateendpoint"
pe_resource_group_name          = "rg-ltr-prod"
subnet_id                       = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/RG-WVD-CNS/providers/Microsoft.Network/virtualNetworks/vnet-wvd-01/subnets/snet-wvd-01"
private_service_connection_name = "backupprivateendpoint"
manual_connection               = false
pdz_name                        = ["backupprivateendpoint"]
private_dns_zone_group_name     = "default"
private_dns_zone_ids            = []
vlink_tags                      = {}
pdz_resource_group_name         = [""]
pdz_link_name                   = [""]
virtual_network_id              = [""]
linked_pdz_name                 = [""]
vlink_resource_group_name       = [""]
sub_resource_id                 = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/RG-LTR-PROD/providers/Microsoft.Storage/storageAccounts/saltrdbbackupscns"
sub_resource_names              = ["blob"]
azure_private_dns_zone_name     = ""
custom_network_interface_name   = ""
pdz_counter                     = 0
#vlink_counter                   = 0
tags = { "ENV" : "PROD",
  "Application Name" : "Mawani CNS",
  "Application Owner" : "Daniel Stuart"
}
