#### IMPORT EXISTING PRIVATE ENDPOINT ####
subscription_id     = <subscription_id>
location                        = "UK South"
use_existing_dns                = true
private_endpoint_name           = "pvt-sqlpoemseur"
pe_resource_group_name          = "rgpoemseur"
subnet_id                       = "/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/Rgpoemseur/providers/Microsoft.Network/virtualNetworks/vnet-poemseurprod/subnets/snet1-poemseurprod"
private_service_connection_name = "pvt-sqlpoemseur"
manual_connection               = false
pdz_name                        = ["privatelink.database.windows.net"]
private_dns_zone_group_name     = "default"
private_dns_zone_ids            = ["/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/Rgpoemseur/providers/Microsoft.Network/privateDnsZones/privatelink.database.windows.net"]
pdz_resource_group_name         = ["rgpoemseur"]
pdz_link_name                   = ["mlsqgh66ugnyk"]
virtual_network_id              = ["/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/Rgpoemseur/providers/Microsoft.Network/virtualNetworks/vnet-poemseurprod"]
linked_pdz_name                 = ["privatelink.database.windows.net"]
vlink_resource_group_name       = ["rgpoemseur"]
sub_resource_id                 = "/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/Rgpoemseur/providers/Microsoft.Sql/servers/sql-poemseur"
sub_resource_names              = ["sqlServer"]
azure_private_dns_zone_name     = "privatelink.database.windows.net"
custom_network_interface_name   = ""
#pdz_counter                     = 2
#vlink_counter                   = 0
tags = {
        "Application Name": "POEMS"
        "Application Owner": "Moinudeen AliAzad"
        "ENV": "PROD"
}