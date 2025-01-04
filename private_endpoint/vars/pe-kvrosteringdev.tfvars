#### IMPORT EXISTING PRIVATE ENDPOINT ####
subscription_id     = <subscription_id>
location                        = "UAE North"
use_existing_dns                = true
private_endpoint_name           = "pe-kvrosteringdev"
pe_resource_group_name          = "rg-rostimadev"
subnet_id                       = "/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/Rg-Vnet/providers/Microsoft.Network/virtualNetworks/Vnet-Rostima/subnets/Snet_Rostima_Dev"
private_service_connection_name = "pe-kvrosteringdev_1038ca50-6b78-421a-93b5-32d6e041e01e"
manual_connection               = false
pdz_name                        = [""]
# private_dns_zone_group_name     = ""
# private_dns_zone_ids            = [""]
pdz_resource_group_name         = [""]
pdz_link_name                   = [""]
virtual_network_id              = [""]
linked_pdz_name                 = [""]
vlink_resource_group_name       = [""]
sub_resource_id                 = "/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/Rg-Rostimadev/providers/Microsoft.KeyVault/vaults/kv-rostering-dev"
sub_resource_names              = ["vault"]
azure_private_dns_zone_name     = ""
custom_network_interface_name   = ""
pdz_counter                     = 0
#vlink_counter                   = 0
tags = {
        "Application Name": "Poems Application"
        "Application Owner": "Moinudeen AliAzad"
        "ENV": "DEV"
}