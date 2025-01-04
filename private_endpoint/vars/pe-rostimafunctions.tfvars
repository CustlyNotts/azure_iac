#### IMPORT EXISTING PRIVATE ENDPOINT ####
subscription_id     = <subscription_id>
location                        = "UAE North"
use_existing_dns                = true
private_endpoint_name           = "pe-rostimafunctions"
pe_resource_group_name          = "rg-rostimadev"
subnet_id                       = "/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/Rg-Vnet/providers/Microsoft.Network/virtualNetworks/vnet-rostimafunctions/subnets/snet-common"
private_service_connection_name = "pe-rostimafunctions"
manual_connection               = false
pdz_name                        = ["privatelink.database.windows.net"]
private_dns_zone_group_name     = "default"
private_dns_zone_ids            = ["/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/Rg-Vnet/providers/Microsoft.Network/privateDnsZones/privatelink.database.windows.net"]
pdz_resource_group_name         = ["rg-vnet"]
pdz_link_name                   = ["g55bemizi7rua", "vnet-roatimafunctions"]
virtual_network_id              = ["/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/Rg-Vnet/providers/Microsoft.Network/virtualNetworks/Vnet-Rostima", "/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/Rg-Vnet/providers/Microsoft.Network/virtualNetworks/vnet-rostimafunctions"]
linked_pdz_name                 = ["privatelink.database.windows.net"]
vlink_resource_group_name       = ["Rg-Vnet"]
sub_resource_id                 = "/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/Rg-Rostima-Prod/providers/Microsoft.Sql/servers/sqlprdrostimadbserver"
sub_resource_names              = ["sqlServer"]
azure_private_dns_zone_name     = "privatelink.database.windows.net"
custom_network_interface_name   = "pe-rostimafunctions-nic"
#pdz_counter                     = 2
#vlink_counter                   = 0
tags = {
        "Application Name": "Poems Application"
        "Application Owner": "Moinudeen AliAzad"
        "ENV": "DEV"
}