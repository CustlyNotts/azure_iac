#### IMPORT EXISTING PRIVATE ENDPOINT ####
subscription_id     = <subscription_id>
location                        = "UK South"
use_existing_dns                = true
private_endpoint_name           = "pe-strgrostimaeurprod01"
pe_resource_group_name          = "rg-rostima-prod"
subnet_id                       = "/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/Rgpoemseur/providers/Microsoft.Network/virtualNetworks/vnet-poemseurprod/subnets/snet1-poemseurprod"
private_service_connection_name = "pe-strgrostimaeurprod01"
manual_connection               = false
pdz_name                        = ["privatelink.blob.core.windows.net"]
private_dns_zone_group_name     = "default"
private_dns_zone_ids            = ["/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/Rg-Rostima-Prod/providers/Microsoft.Network/privateDnsZones/privatelink.blob.core.windows.net"]
pdz_resource_group_name         = ["rg-rostima-prod"]
pdz_link_name                   = ["mlsqgh66ugnyk", "privatelink.blob.core.windows.net-link"]
virtual_network_id              = ["/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/Rgpoemseur/providers/Microsoft.Network/virtualNetworks/vnet-poemseurprod", "/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/Rg-Vnet/providers/Microsoft.Network/virtualNetworks/vnet-rostimafunctions"]
linked_pdz_name                 = ["privatelink.blob.core.windows.net"]
vlink_resource_group_name       = ["rg-rostima-prod"]
sub_resource_id                 = "/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/Rg-Rostima-Prod/providers/Microsoft.Storage/storageAccounts/strgrostimaeurprod01"
sub_resource_names              = ["blob"]
azure_private_dns_zone_name     = "privatelink.blob.core.windows.net"
custom_network_interface_name   = "pe-strgrostimaeurprod01-nic"
#pdz_counter                     = 2
#vlink_counter                   = 0
tags = {
        "Application Name": "Rostima"
        "Application Owner": "Hasaan Malik"
        "ENV": "PROD"
        "RITM": "RITM0042388"
}