#### IMPORT EXISTING PRIVATE ENDPOINT ####
subscription_id     = <subscription_id>
location                        = "Canada Central"
use_existing_dns                = true
private_endpoint_name           = "pe-strgcrsamrprod"
pe_resource_group_name          = "rg-crs-amr-prod"
subnet_id                       = "/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/rg-crs-amr-prod/providers/Microsoft.Network/virtualNetworks/vnet-crs-amr-prod/subnets/snet-crs-amr-prod"
private_service_connection_name = "pe-strgcrsamrprod"
manual_connection               = false
pdz_name                        = ["privatelink.blob.core.windows.net"]
private_dns_zone_group_name     = "default"
private_dns_zone_ids            = ["/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/rg-crs-amr-prod/providers/Microsoft.Network/privateDnsZones/privatelink.blob.core.windows.net"]
pdz_resource_group_name         = ["rg-crs-amr-prod"]
pdz_link_name                   = ["fo62elmfbagrk"]
virtual_network_id              = ["/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/rg-crs-amr-prod/providers/Microsoft.Network/virtualNetworks/vnet-crs-amr-prod"]
linked_pdz_name                 = ["privatelink.blob.core.windows.net"]
vlink_resource_group_name       = ["rg-crs-amr-prod"]
sub_resource_id                 = "/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/rg-crs-amr-prod/providers/Microsoft.Storage/storageAccounts/strgcrsamrprod"
sub_resource_names              = ["blob"]
azure_private_dns_zone_name     = "privatelink.blob.core.windows.net"
custom_network_interface_name   = "pe-strgcrsamrprod-nic"
#pdz_counter                     = 2
#vlink_counter                   = 0
tags = {
        "Application Name": "CRS application Americas Region"
        "Application Owner": "Moinudeen AliAzad"
        "ENV": "PROD"
}