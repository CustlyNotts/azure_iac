#### IMPORT EXISTING PRIVATE ENDPOINT ####
subscription_id     = <subscription_id>
location                        = "UK South"
use_existing_dns                = true
private_endpoint_name           = "pvtrediscache"
pe_resource_group_name          = "rgpoemseur"
subnet_id                       = "/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/Rgpoemseur/providers/Microsoft.Network/virtualNetworks/vnet-poemseurprod/subnets/redisprod-snet"
private_service_connection_name = "pvtrediscache"
manual_connection               = false
pdz_name                        = ["privatelink.redis.cache.windows.net"]
private_dns_zone_group_name     = "default"
private_dns_zone_ids            = ["/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/Rgpoemseur/providers/Microsoft.Network/privateDnsZones/privatelink.redis.cache.windows.net"]
pdz_resource_group_name         = ["rgpoemseur"]
pdz_link_name                   = ["fhmllljkkufoy", "mlsqgh66ugnyk", "vnet-eursechub"]
virtual_network_id              = ["/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/Rg-Rostima-DR/providers/Microsoft.Network/virtualNetworks/Vnet-Rostima-DR", "/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/Rgpoemseur/providers/Microsoft.Network/virtualNetworks/vnet-poemseurprod", "/subscriptions/1b37d994-cdaf-4d33-b73d-afb406d36357/resourceGroups/rg-eur-sechub/providers/Microsoft.Network/virtualNetworks/EUR-Vnetsechub"]
linked_pdz_name                 = ["privatelink.redis.cache.windows.net"]
vlink_resource_group_name       = ["rgpoemseur"]
sub_resource_id                 = "/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/Rgpoemseur/providers/Microsoft.Cache/redis/poemseur"
sub_resource_names              = ["redisCache"]
azure_private_dns_zone_name     = "privatelink.redis.cache.windows.net"
#custom_network_interface_name   = ""
#pdz_counter                     = 2
#vlink_counter                   = 0
tags = {
        "Application Name": "POEMS"
        "Application Owner": "Moinudeen AliAzad"
        "ENV": "PROD"
}