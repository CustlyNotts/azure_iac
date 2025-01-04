#### IMPORT EXISTING PRIVATE ENDPOINT ####
subscription_id     = <subscription_id>
location                        = "UAE North"
use_existing_dns                = true
private_endpoint_name           = "pe-strgrostimaprod01"
pe_resource_group_name          = "rg-rostima-prod"
subnet_id                       = "/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/Rg-Vnet/providers/Microsoft.Network/virtualNetworks/Vnet-Rostima/subnets/Snet_Rostima_Prod"
private_service_connection_name = "pe-strgrostimaprod01"
manual_connection               = false
pdz_name                        = ["privatelink.blob.core.windows.net"]
private_dns_zone_group_name     = "default"
private_dns_zone_ids            = ["/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/NetworkWatcherRG/providers/Microsoft.Network/privateDnsZones/privatelink.blob.core.windows.net"]
pdz_resource_group_name         = ["NetworkWatcherRG"]
pdz_link_name                   = ["g55bemizi7rua"]
virtual_network_id              = ["/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/Rg-Vnet/providers/Microsoft.Network/virtualNetworks/Vnet-Rostima"]
linked_pdz_name                 = ["privatelink.blob.core.windows.net"]
vlink_resource_group_name       = ["NetworkWatcherRG"]
sub_resource_id                 = "/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/Rg-Rostima-Prod/providers/Microsoft.Storage/storageAccounts/strgrostimaprod01"
sub_resource_names              = ["blob"]
azure_private_dns_zone_name     = "privatelink.blob.core.windows.net"
custom_network_interface_name   = "pe-strgrostimaprod01-nic"
#pdz_counter                     = 2
#vlink_counter                   = 0
tags = {
        "Application Name": "Rostima"
        "Application Owner": "Hasaan Malik"
        "ENV": "PROD"
}