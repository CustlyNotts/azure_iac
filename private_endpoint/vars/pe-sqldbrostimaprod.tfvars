#### IMPORT EXISTING PRIVATE ENDPOINT ####
subscription_id     = <subscription_id>
location                        = "UAE North"
use_existing_dns                = true
private_endpoint_name           = "pe-sqldbrostimaprod"
pe_resource_group_name          = "rg-rostima-prod"
subnet_id                       = "/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/Rg-Vnet/providers/Microsoft.Network/virtualNetworks/Vnet-Rostima/subnets/Snet_Rostima_Prod"
private_service_connection_name = "pe-sqldbrostimaprod"
manual_connection               = false
pdz_name                        = ["privatelink.database.windows.net"]
private_dns_zone_group_name     = "default"
private_dns_zone_ids            = ["/subscriptions/cf524703-9d5e-4aa2-bbe9-975fe083f66a/resourceGroups/rg-dnsdomains/providers/Microsoft.Network/privateDnsZones/privatelink.database.windows.net"]
pdz_resource_group_name         = ["rg-dnsdomains"]
pdz_link_name                   = ["aks-ecommerce-prod", "dfnga4u4fohwc","sechub","uaeregion-vnet","vnet-ecommerce-prod-dr"]
virtual_network_id              = ["/subscriptions/039efcb8-56e2-459b-ad3c-68c086e8feb9/resourceGroups/rg-ecommerce-infra-prod/providers/Microsoft.Network/virtualNetworks/vnet-ecommerce-prod","/subscriptions/5a53469f-938f-4947-908f-851bde5c3777/resourceGroups/rg-network/providers/Microsoft.Network/virtualNetworks/vnet-appliedscience","/subscriptions/cf524703-9d5e-4aa2-bbe9-975fe083f66a/resourceGroups/rgnwsechub/providers/Microsoft.Network/virtualNetworks/vnetsechub","/subscriptions/285e84f7-6641-4a10-8ef4-b1ef77524992/resourceGroups/FIDELIS_RG/providers/Microsoft.Network/virtualNetworks/UAERegion-vnet","/subscriptions/039efcb8-56e2-459b-ad3c-68c086e8feb9/resourceGroups/rg-ecommerce-infra-prod-dr/providers/Microsoft.Network/virtualNetworks/vnet-ecommerce-prod-dr"]
linked_pdz_name                 = ["privatelink.database.windows.net"]
vlink_resource_group_name       = ["rg-dnsdomains"]
sub_resource_id                 = "/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/Rg-Rostima-Prod/providers/Microsoft.Sql/servers/sqlprdrostimadbserver"
sub_resource_names              = ["sqlServer"]
azure_private_dns_zone_name     = "privatelink.database.windows.net"
custom_network_interface_name   = ""
#pdz_counter                     = 2
#vlink_counter                   = 0
tags = {
        "Application Name": "Rostima"
        "Application Owner": "Hasaan Malik"
        "ENV": "PROD"
}