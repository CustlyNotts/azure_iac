#### IMPORT EXISTING PRIVATE ENDPOINT ####
subscription_id     = <subscription_id>
location                        = "UAE North"
use_existing_dns                = true
private_endpoint_name           = "pe-Rostimaprod1-redis"
pe_resource_group_name          = "rg-rostima-prod"
subnet_id                       = "/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/Rg-Vnet/providers/Microsoft.Network/virtualNetworks/Vnet-Rostima/subnets/Snet_Rostima_Prod"
private_service_connection_name = "pe-Rostimaprod1-redis"
manual_connection               = false
# pdz_name                        = [""]
# private_dns_zone_group_name     = ""
# private_dns_zone_ids            = [""]
# pdz_resource_group_name         = [""]
# pdz_link_name                   = [""]
# virtual_network_id              = [""]
# linked_pdz_name                 = [""]
 vlink_resource_group_name       = ["rg-rostima-prod"]
sub_resource_id                 = "/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/Rgpoemseur/providers/Microsoft.Sql/servers/sql-poemseur"
sub_resource_names              = ["redisCache"]
azure_private_dns_zone_name     = ""
custom_network_interface_name   = ""
pdz_counter                     = 0
vlink_counter                   = 0
tags = {
        "Application Name": "Rostima"
        "Application Owner": "Hasaan Malik"
        "ENV": "PROD"
}