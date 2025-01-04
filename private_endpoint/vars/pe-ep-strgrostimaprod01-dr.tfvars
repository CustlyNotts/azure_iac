#### IMPORT EXISTING PRIVATE ENDPOINT ####
subscription_id     = <subscription_id>
location                        = "UK South"
use_existing_dns                = true
private_endpoint_name           = "ep-strgrostimaprod01-dr"
pe_resource_group_name          = "rg-rostima-dr"
subnet_id                       = "/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/Rg-Rostima-DR/providers/Microsoft.Network/virtualNetworks/Vnet-Rostima-DR/subnets/Snet_Rostima_DR"
private_service_connection_name = "ep-strgrostimaprod01-dr"
manual_connection               = false
pdz_name                        = ["privatelink.blob.core.windows.net"]
private_dns_zone_group_name     = "default"
private_dns_zone_ids            = ["/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/Rg-Rostima-DR/providers/Microsoft.Network/privateDnsZones/privatelink.blob.core.windows.net"]
pdz_resource_group_name         = ["rg-rostima-dr"]
pdz_link_name                   = ["fhmllljkkufoy","vnet-eursechub"]
virtual_network_id              = ["/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/Rg-Rostima-DR/providers/Microsoft.Network/virtualNetworks/Vnet-Rostima-DR","/subscriptions/1b37d994-cdaf-4d33-b73d-afb406d36357/resourceGroups/rg-eur-sechub/providers/Microsoft.Network/virtualNetworks/EUR-Vnetsechub"]
linked_pdz_name                 = ["privatelink.blob.core.windows.net"]
vlink_resource_group_name       = ["Rg-Rostima-DR"]
sub_resource_id                 = "/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/Rg-Rostima-Prod/providers/Microsoft.Storage/storageAccounts/strgrostimaprod01"
sub_resource_names              = ["blob"]
azure_private_dns_zone_name     = "privatelink.blob.core.windows.net"
custom_network_interface_name   = "ep-strgrostimaprod01-dr-nic"
#pdz_counter                     = 2
#vlink_counter                   = 0
tags = {
        "Application Name": "Poems Application"
        "Application Owner": "Moinudeen AliAzad"
        "ENV": "PROD"
}