#### IMPORT EXISTING PRIVATE ENDPOINT ####
subscription_id     = <subscription_id>
location                        = "Canada Central"
use_existing_dns                = true
private_endpoint_name           = "pvt-cargoesreportpreprod"
pe_resource_group_name          = "rg-cargoescanada-preprod"
subnet_id                       = "/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/rg-cargoescanada-preprod/providers/Microsoft.Network/virtualNetworks/vnet-cargoescanada-preprod/subnets/snet-cargoes-privateendpoint"
private_service_connection_name = "pvt-cargoesreportpreprod-8d22"
manual_connection               = false
pdz_name                        = ["privatelink.azurewebsites.net"]
private_dns_zone_group_name     = "default"
private_dns_zone_ids            = ["/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/rg-cargoescanada-preprod/providers/Microsoft.Network/privateDnsZones/privatelink.azurewebsites.net"]
pdz_resource_group_name         = ["rg-cargoescanada-preprod"]
pdz_link_name                   = ["fa15c6bbc4e06"]
virtual_network_id              = ["/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/rg-cargoescanada-preprod/providers/Microsoft.Network/virtualNetworks/vnet-cargoescanada-preprod"]
linked_pdz_name                 = ["privatelink.azurewebsites.net"]
vlink_resource_group_name       = ["rg-cargoescanada-preprod"]
sub_resource_id                 = "/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/rg-cargoescanada-preprod/providers/Microsoft.Web/sites/cargoes-report-preprod"
sub_resource_names              = ["sites"]
azure_private_dns_zone_name     = ""
custom_network_interface_name   = ""
pdz_counter                     = 1
vlink_counter                   = 1

tags = {
        "Application Name": "Mawani CNS",
        "Application Owner": "Daniel Stuart",
        "ENV": "PROD"
}