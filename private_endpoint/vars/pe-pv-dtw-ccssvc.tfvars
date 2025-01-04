#### IMPORT EXISTING PRIVATE ENDPOINT ####
subscription_id     = <subscription_id>
location                        = "UAE North"
use_existing_dns                = true
private_endpoint_name           = "pv-dtw-ccssvc"
pe_resource_group_name          = "rg-wvd-dtw"
subnet_id                       = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wvd-dtw/providers/Microsoft.Network/virtualNetworks/vnet-wvd-dtw/subnets/snet-wvd-dtw"
private_service_connection_name = "pv-dtw-ccssvc"
manual_connection               = false
pdz_name                        = ["privatelink.file.core.windows.net"]
private_dns_zone_group_name     = "default"
private_dns_zone_ids            = ["/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wvd-dtw/providers/Microsoft.Network/privateDnsZones/privatelink.file.core.windows.net"]
pdz_resource_group_name         = ["rg-wvd-dtw"]
pdz_link_name                   = ["cargoes-customs", "vrb3txjddipbk"]
virtual_network_id              = ["/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-cargoes-app/providers/Microsoft.Network/virtualNetworks/vnet-cargoes-customs", "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wvd-dtw/providers/Microsoft.Network/virtualNetworks/vnet-wvd-dtw"]
linked_pdz_name                 = ["privatelink.file.core.windows.net"]
vlink_resource_group_name       = ["rg-wvd-dtw"]
sub_resource_id                 = "/subscriptions/3b33091e-1cdc-4ea3-a1a9-112226376c1b/resourceGroups/rg-cargoescustoms-svc-prod/providers/Microsoft.Storage/storageAccounts/stccssvcprd"
sub_resource_names              = ["file"]
azure_private_dns_zone_name     = "privatelink.file.core.windows.net"
custom_network_interface_name   = "pv-dtw-ccssvc-nic"
#pdz_counter                     = 0
#vlink_counter                   = 0

tags = {
        "Application Name": "WVD",
        "Application Owner": "Global IT Infra Team",
        "ENV": "PROD"
}