#### IMPORT EXISTING PRIVATE ENDPOINT ####
subscription_id     = <subscription_id>
location                        = "UAE North"
use_existing_dns                = true
private_endpoint_name           = "pe-zodiacmpm-prod"
pe_resource_group_name          = "rg-mawani-boomi-prod"
subnet_id                       = "/subscriptions/7c7a17a5-36b8-40d9-a4b4-6f303637dc47/resourceGroups/rg-mawani-boomi-prod/providers/Microsoft.Network/virtualNetworks/vnet-mawani-boomi-prod/subnets/snet-mawani-boomi-prod"
private_service_connection_name = "MPMZP_APP_PrivateLinkService"
manual_connection               = true
pdz_name                        = [""]
#private_dns_zone_group_name     = "default"
#private_dns_zone_ids            = ["/subscriptions/7c7a17a5-36b8-40d9-a4b4-6f303637dc47/resourceGroups/rg-mawani-boomi-prod/providers/Microsoft.Network/privateEndpoints/pe-zodiacmpm-prod"]
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
tags = { "Application Name" : "Boomi",
  "Application Owner" : "Daniel",
"ENV" : "PROD" }
