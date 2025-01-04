#### IMPORT EXISTING PRIVATE ENDPOINT ####
subscription_id     = <subscription_id>
location                        = "Canada Central"
use_existing_dns                = true
private_endpoint_name           = "pe-rc-crsamr-prod"
pe_resource_group_name          = "rg-crs-amr-prod"
subnet_id                       = "/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/rg-crs-amr-prod/providers/Microsoft.Network/virtualNetworks/vnet-crs-amr-prod/subnets/snet-crs-amr-prod"
private_service_connection_name = "pe-rc-crsamr-prod_cc14204d-5b14-46af-a5ab-5812fb9a001a"
manual_connection               = false
pdz_name                        = ["privatelink.redis.cache.windows.net"]
private_dns_zone_group_name     = "default"
private_dns_zone_ids            = ["/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/rg-crs-amr-prod/providers/Microsoft.Network/privateDnsZones/privatelink.redis.cache.windows.net"]
pdz_resource_group_name         = ["rg-crs-amr-prod"]
pdz_link_name                   = ["fo62elmfbagrk"]
virtual_network_id              = ["/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/rg-crs-amr-prod/providers/Microsoft.Network/virtualNetworks/vnet-crs-amr-prod"]
linked_pdz_name                 = ["privatelink.redis.cache.windows.net"]
vlink_resource_group_name       = ["rg-crs-amr-prod"]
sub_resource_id                 = "/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/rg-crs-amr-prod/providers/Microsoft.Cache/redis/rc-crs-amr-prod"
sub_resource_names              = ["redisCache"]
azure_private_dns_zone_name     = "privatelink.redis.cache.windows.net"
custom_network_interface_name   = ""
#pdz_counter                     = 2
#vlink_counter                   = 0
tags = {
        "Application Name": "CRS application Americas Region"
        "Application Owner": "Moinudeen AliAzad"
        "ENV": "PROD"
}