#### IMPORT EXISTING PRIVATE ENDPOINT ####
subscription_id     = <subscription_id>
location                        = "UK South"
use_existing_dns                = true
private_endpoint_name           = "privateendpoint-cnsprod"
pe_resource_group_name          = "rg-cnsprod"
subnet_id                       = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/cnsnw/providers/Microsoft.Network/virtualNetworks/CNSNetwork/subnets/snet-cnsprod"
private_service_connection_name = "privateendpoint-cnsprod_f7e00a0f-555a-438c-91d5-c4796430901c"
manual_connection               = false
pdz_name                        = ["privatelink.redis.cache.windows.net"]
private_dns_zone_group_name     = "default"
private_dns_zone_ids            = ["/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/cnsnw/providers/Microsoft.Network/privateDnsZones/privatelink.redis.cache.windows.net"]
pdz_resource_group_name         = ["cnsnw"]
pdz_link_name                   = ["2hdeglrgo2fke"]
virtual_network_id              = ["/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/cnsnw/providers/Microsoft.Network/virtualNetworks/CNSNetwork"]
linked_pdz_name                 = ["privatelink.redis.cache.windows.net"]
vlink_resource_group_name       = ["cnsnw"]
sub_resource_id                 = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/rg-cnsprod/providers/Microsoft.Cache/redis/cnsprod"
sub_resource_names              = ["redisCache"]
azure_private_dns_zone_name     = "privatelink.redis.cache.windows.net"
custom_network_interface_name   = ""
#pdz_counter                     = 0
#vlink_counter                   = 0
tags = {

  "ENV" : "PROD",
  "Application Name" : "Mawani CNS",
  "Application Owner" : "Daniel/Sachin"
}

