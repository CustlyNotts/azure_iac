#### IMPORT EXISTING PRIVATE ENDPOINT ####
subscription_id     = <subscription_id>
location                        = "Canada Central"
use_existing_dns                = true
private_endpoint_name           = "cargoes-prod-Privateendpoint"
pe_resource_group_name          = "rg-cargoescanada-prod"
subnet_id                       = "/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/rg-cargoescanada-prod/providers/Microsoft.Network/virtualNetworks/vnet-cargoscanada-prod/subnets/snet-cargoesreport-privteendpoint"
private_service_connection_name = "cargoes-prod-Privateendpoint-badc"
manual_connection               = false
pdz_name                        = ["privatelink.azurewebsites.net"]
private_dns_zone_group_name     = "default"
private_dns_zone_ids            = ["/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/rg-cargoescanada-prod/providers/Microsoft.Network/privateDnsZones/privatelink.azurewebsites.net"]
pdz_resource_group_name         = ["rg-cargoescanada-prod"]
pdz_link_name                   = ["f9f8d19dfc4b4"]
virtual_network_id              = ["/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/rg-cargoescanada-prod/providers/Microsoft.Network/virtualNetworks/vnet-cargoscanada-prod"]
linked_pdz_name                 = ["privatelink.azurewebsites.net"]
vlink_resource_group_name       = ["rg-cargoescanada-prod"]
sub_resource_id                 = "/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/rg-cargoescanada-prod/providers/Microsoft.Web/sites/cargoes-report-prod"
sub_resource_names              = ["sites"]
azure_private_dns_zone_name     = "privatelink.azurewebsites.net"
custom_network_interface_name   = ""
pdz_counter                     = 1
vlink_counter                   = 1

tags = {
      "Application Name": "Cargoes Canada ",
        "Application Owner": "Daniel Stuart",
        "ENV": "PROD"
}