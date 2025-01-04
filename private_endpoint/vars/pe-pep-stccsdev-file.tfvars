#### IMPORT EXISTING PRIVATE ENDPOINT ####
subscription_id     = <subscription_id>
location                        = "UAE North"
use_existing_dns                = true
private_endpoint_name           = "pep-stccsdev-file"
pe_resource_group_name          = "rg-wvd-dtw"
subnet_id                       = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wvd-dtw/providers/Microsoft.Network/virtualNetworks/vnet-wvd-dtw/subnets/snet-wvd-dtw"
private_service_connection_name = "pep-stccsdev-file"
manual_connection               = false
pdz_name                        = ["privatelink.file.core.windows.net"]
private_dns_zone_group_name     = "default"
private_dns_zone_ids            = ["/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/RG-WVD-Salmon/providers/Microsoft.Network/privateDnsZones/privatelink.file.core.windows.net"]
pdz_resource_group_name         = ["rg-wvd-salmon"]
pdz_link_name                   = ["ixj3ygttymvec", "vnet-link-uaeregion", "wvdba-vnetlink"]
virtual_network_id              = ["/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/RG-WVD-Salmon/providers/Microsoft.Network/virtualNetworks/Vnet-WVD-Salmon", "/subscriptions/285e84f7-6641-4a10-8ef4-b1ef77524992/resourceGroups/FIDELIS_RG/providers/Microsoft.Network/virtualNetworks/UAERegion-vnet", "/subscriptions/3c44ba2d-eba5-4d51-adb8-8614bf03bd29/resourceGroups/RG-WVD-BA/providers/Microsoft.Network/virtualNetworks/Vnet-WVD-BA"]
linked_pdz_name                 = ["privatelink.file.core.windows.net"]
vlink_resource_group_name       = ["rg-wvd-salmon"]
sub_resource_id                 = "/subscriptions/3b33091e-1cdc-4ea3-a1a9-112226376c1b/resourceGroups/rg-cargoescustoms-dev/providers/Microsoft.Storage/storageAccounts/stccsdev"
sub_resource_names              = ["file"]
azure_private_dns_zone_name     = "privatelink.file.core.windows.net"
custom_network_interface_name   = "pep-stccsdev-file-nic"
#pdz_counter                     = 0
#vlink_counter                   = 0
private_dns_tags = {"Creator" = "Fahim Az Admin"}
vlink_tags = {"Creator" = "Fahim Az Admin"}

tags = {
        "Application Name": "WVD",
        "Application Owner": "Global IT Infra Team",
        "ENV": "PROD"
}