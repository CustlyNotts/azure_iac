#### IMPORT EXISTING PRIVATE ENDPOINT ####
subscription_id     = <subscription_id>
location                        = "UAE North"
use_existing_dns                = true
private_endpoint_name           = "pe-strgrosteringarchivalschfunction-prod"
pe_resource_group_name          = "rg-rostima-prod"
subnet_id                       = "/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/Rg-Vnet/providers/Microsoft.Network/virtualNetworks/vnet-rostimafunctions/subnets/snet-common"
private_service_connection_name = "pe-strgrosteringarchivalschfunction-prod"
manual_connection               = false
pdz_name                        = ["privatelink.azurewebsites.net"]
private_dns_zone_group_name     = "default"
private_dns_zone_ids            = ["/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/Rg-Rostima-Prod/providers/Microsoft.Network/privateDnsZones/privatelink.azurewebsites.net"]
pdz_resource_group_name         = ["rg-rostima-prod"]
pdz_link_name                   = [""]
virtual_network_id              = [""]
linked_pdz_name                 = ["privatelink.azurewebsites.net"]
vlink_resource_group_name       = [""]
sub_resource_id                 = "/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/Rg-Rostima-Prod/providers/Microsoft.Web/Sites/RosteringArchivalSchedulerFunctionProd"
sub_resource_names              = ["sites"]
azure_private_dns_zone_name     = "privatelink.azurewebsites.net"
custom_network_interface_name   = ""
#pdz_counter                     = 2
vlink_counter                   = 0
tags = {
        "Application Name": "Rostima"
        "Application Owner": "Hasaan Malik"
        "ENV": "PROD"
}