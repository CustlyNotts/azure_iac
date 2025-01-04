#### IMPORT EXISTING PRIVATE ENDPOINT ####
subscription_id     = <subscription_id>
location                        = "Canada Central"
use_existing_dns                = true
private_endpoint_name           = "pep-sql-crs-amr-vm"
pe_resource_group_name          = "rg-crs-amr-prod"
subnet_id                       = "/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/rg-crs-amr-prod/providers/Microsoft.Network/virtualNetworks/vnet-crs-amr-prod/subnets/snet-crs-amr-prod"
private_service_connection_name = "pep-sql-crs-amr-VM"
manual_connection               = false
pdz_name                        = ["privatelink.database.windows.net"]
private_dns_zone_group_name     = "default"
private_dns_zone_ids            = ["/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/rg-crs-amr-prod/providers/Microsoft.Network/privateDnsZones/privatelink.database.windows.net"]
pdz_resource_group_name         = ["rg-crs-amr-prod"]
pdz_link_name                   = ["fo62elmfbagrk", "vlink-metallic-cc"]
virtual_network_id              = ["/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/rg-crs-amr-prod/providers/Microsoft.Network/virtualNetworks/vnet-crs-amr-prod", "/subscriptions/0f1aad42-836d-40a7-bc3d-13587ecdb839/resourceGroups/rg-metallicgw_canadacentral-prod/providers/Microsoft.Network/virtualNetworks/vnet-metallicgw_canadacentral-prod"]
linked_pdz_name                 = ["privatelink.database.windows.net"]
vlink_resource_group_name       = ["rg-crs-amr-prod"]
sub_resource_id                 = "/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/rg-crs-amr-prod/providers/Microsoft.Sql/servers/sql-crs-amr-prod"
sub_resource_names              = ["sqlServer"]
azure_private_dns_zone_name     = "privatelink.database.windows.net"
custom_network_interface_name   = "pep-sql-crs-amr-VM-nic"
#pdz_counter                     = 2
#vlink_counter                   = 0
tags = {
        "Application Name": "CRS application Americas Region"
        "Application Owner": "Moinudeen AliAzad"
        "ENV": "PROD"
}