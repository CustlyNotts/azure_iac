#### IMPORT EXISTING PRIVATE ENDPOINT ####
subscription_id     = <subscription_id>
location                        = "Canada Central"
use_existing_dns                = true
private_endpoint_name           = "pvt_cargoesreportstest"
pe_resource_group_name          = "rg-cargoscanada-test"
subnet_id                       = "/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/rg-cargoscanada-test/providers/Microsoft.Network/virtualNetworks/vnet-cargoescanada-test/subnets/snet-cargoes-privateendpoint"
private_service_connection_name = "pvt_cargoesreportstest-847f"
manual_connection               = false
pdz_name                        = ["privatelink.azurewebsites.net"]
private_dns_zone_group_name     = "default"
private_dns_zone_ids            = ["/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/rg-cargoscanada-test/providers/Microsoft.Network/privateDnsZones/privatelink.azurewebsites.net"]
pdz_resource_group_name         = ["rg-cargoscanada-test"]
pdz_link_name                   = ["6b188e205779a"]
virtual_network_id              = ["/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/rg-cargoscanada-test/providers/Microsoft.Network/virtualNetworks/vnet-cargoescanada-test"]
linked_pdz_name                 = ["privatelink.azurewebsites.net"]
vlink_resource_group_name       = ["rg-cargoscanada-test"]
sub_resource_id                 = "/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/rg-cargoscanada-test/providers/Microsoft.Web/sites/cargoes-reports-test"
sub_resource_names              = ["sites"]
azure_private_dns_zone_name     = "privatelink.azurewebsites.net"
custom_network_interface_name   = ""
#pdz_counter                     = 0
#vlink_counter                   = 0

tags = {
        "Application Name": "cargoes canada UAT",
        "Application Owner": "Danial",
        "ENV": "TESTING"

        }