#### IMPORT EXISTING PRIVATE ENDPOINT ####
subscription_id     = <subscription_id>
location                        = "UAE North"
use_existing_dns                = true
private_endpoint_name           = "pe-lad-prod"
pe_resource_group_name          = "rg-global-prod"
subnet_id                       = "/subscriptions/7076703f-57ca-4c30-9d69-94c008f7a470/resourceGroups/rg-global-infra-prod/providers/Microsoft.Network/virtualNetworks/vnet-global-prod/subnets/snet-aks-global-prod"
private_service_connection_name = "ZOC_FC_LADPRD_APP_PrivateLinkService"
manual_connection               = true
pdz_name                        = [""]
#private_dns_zone_group_name     = "default"
#private_dns_zone_ids            = ["/subscriptions/7076703f-57ca-4c30-9d69-94c008f7a470/resourceGroups/rg-global-prod/providers/Microsoft.Network/privateEndpoints/pe-lad-prod"]
pdz_resource_group_name       = [""]
pdz_link_name                 = [""]
virtual_network_id            = [""]
linked_pdz_name               = [""]
vlink_resource_group_name     = [""]
sub_resource_id               = ""
sub_resource_names            = []
azure_private_dns_zone_name   = ""
custom_network_interface_name = ""
pdz_counter                   = 0
#vlink_counter                   = 0
tags = { "Application Name" : "CCS",
  "Application Owner" : "Daniel Stuart/Linu Joseph/Pradeesh Raju",
"ENV" : "PROD" }
