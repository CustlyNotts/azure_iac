#### IMPORT EXISTING PRIVATE ENDPOINT ####
subscription_id     = <subscription_id>
location                        = "Canada Central"
use_existing_dns                = true
private_endpoint_name           = "pecargoesreportstest"
pe_resource_group_name          = "rg-cargoscanada-test"
subnet_id                       = "/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/rg-cargoscanada-test/providers/Microsoft.Network/virtualNetworks/vnet-cargoescanada-test/subnets/snet-cargoes-privateendpoint"
private_service_connection_name = "pecargoesreportstest-9cb3"
manual_connection               = false
pdz_name                        = []
private_dns_zone_group_name     = "default"
private_dns_zone_ids            = []
pdz_resource_group_name         = []
pdz_link_name                   = []
virtual_network_id              = []
linked_pdz_name                 = []
vlink_resource_group_name       = []
sub_resource_id                 = "/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/rg-cargoscanada-test/providers/Microsoft.Web/sites/cargoes-reports-test"
sub_resource_names              = ["sites"]
azure_private_dns_zone_name     = ""
custom_network_interface_name   = ""
pdz_counter                     = 0
#vlink_counter                   = 0

tags = {
      "ENV": "TESTING",
        "Application Name": "cargoes canada UAT",
        "Application Owner": "Danial"
}