#### IMPORT EXISTING PRIVATE ENDPOINT ####
subscription_id     = <subscription_id>
location                        = "Canada Central"
use_existing_dns                = true
private_endpoint_name           = "pvt_cargoesreportstag"
pe_resource_group_name          = "rg-cargoescanadastg"
subnet_id                       = "/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/rg-cargoescanadastg/providers/Microsoft.Network/virtualNetworks/vnet-cargoescanadastg/subnets/snet-cargoesprivateendpoint"
private_service_connection_name = "pvt_cargoesreportstag-9d42"
manual_connection               = false
pdz_name                        = ["privatelink.azurewebsites.net"]
private_dns_zone_group_name     = "default"
private_dns_zone_ids            = ["/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/rg-cargoescanadastg/providers/Microsoft.Network/privateDnsZones/privatelink.azurewebsites.net"]
pdz_resource_group_name         = ["rg-cargoescanadastg"]
pdz_link_name                   = ["4172d8d7606ae"]
virtual_network_id              = ["/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/rg-cargoescanadastg/providers/Microsoft.Network/virtualNetworks/vnet-cargoescanadastg"]
linked_pdz_name                 = ["privatelink.azurewebsites.net"]
vlink_resource_group_name       = ["rg-cargoescanadastg"]
sub_resource_id                 = "/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/rg-cargoescanadastg/providers/Microsoft.Web/sites/cargoes-report-stag"
sub_resource_names              = ["sites"]
azure_private_dns_zone_name     = "privatelink.azurewebsites.net"
custom_network_interface_name   = ""
#pdz_counter                     = 0
#vlink_counter                   = 0

tags = {
        "Application Name": "Cargoes Canada ",
        "Application Owner": "Daniel Stuart",
        "ENV": "DEV"
}