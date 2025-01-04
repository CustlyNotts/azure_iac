#### IMPORT EXISTING PRIVATE ENDPOINT ####
subscription_id     = <subscription_id>
location                        = "UK South"
use_existing_dns                = true
private_endpoint_name           = "pe-sqlpoemseur-uaedr"
pe_resource_group_name          = "rg-rostima-dr"
subnet_id                       = "/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/Rg-Rostima-DR/providers/Microsoft.Network/virtualNetworks/Vnet-Rostima-DR/subnets/Snet_Rostima_DR"
private_service_connection_name = "pe-sqlpoemseur-uaedr"
manual_connection               = false
pdz_name                        = ["privatelink.database.windows.net"]
private_dns_zone_group_name     = "default"
private_dns_zone_ids            = ["/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/Rg-Rostima-DR/providers/Microsoft.Network/privateDnsZones/privatelink.database.windows.net"]
pdz_resource_group_name         = ["Rg-Rostima-DR"]
pdz_link_name                   = ["fhmllljkkufoy"]
virtual_network_id              = ["/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/Rg-Rostima-DR/providers/Microsoft.Network/virtualNetworks/Vnet-Rostima-DR"]
linked_pdz_name                 = ["privatelink.database.windows.net"]
vlink_resource_group_name       = ["Rg-Rostima-DR"]
sub_resource_id                 = "/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/Rgpoemseur/providers/Microsoft.Sql/servers/sql-poemseur"
sub_resource_names              = ["sqlServer"]
azure_private_dns_zone_name     = "privatelink.database.windows.net"
custom_network_interface_name   = "pe-sqlpoemseur-uaedr-nic"
#pdz_counter                     = 2
#vlink_counter                   = 0
tags = {
        "Application Name": "Poems Application"
        "Application Owner": "Moinudeen AliAzad"
        "ENV": "PROD"
}