#### IMPORT EXISTING PRIVATE ENDPOINT ####
subscription_id     = <subscription_id>
location                        = "UAE North"
use_existing_dns                = true
private_endpoint_name           = "ep-wlp-dev-postgresql"
pe_resource_group_name          = "rg-wlp-dev"
subnet_id                       = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-dev/providers/Microsoft.Network/virtualNetworks/vnet-wlp-dev-uaenorth/subnets/snet-wlp-dev-native-uaenorth"
private_service_connection_name = "privateserviceconnection-wlp-dev"
manual_connection               = false
pdz_name                        = ["dev.wlp.com"]
private_dns_zone_group_name     = "zone-db-wlp-dev"
private_dns_zone_ids            = ["/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-dev/providers/Microsoft.Network/privateDnsZones/dev.wlp.com"]
pdz_resource_group_name         = ["rg-wlp-dev"]
pdz_link_name                   = ["link-vnet-wlp-dev-uaenorth"]
virtual_network_id              = ["/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-dev/providers/Microsoft.Network/virtualNetworks/vnet-wlp-dev-uaenorth"]
linked_pdz_name                 = ["dev.wlp.com"]
vlink_resource_group_name       = ["rg-wlp-dev"]
sub_resource_id                 = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-dev/providers/Microsoft.DBforPostgreSQL/servers/db-wlp-dev"
sub_resource_names              = ["postgresqlServer"]
azure_private_dns_zone_name     = "dev.wlp.com"
custom_network_interface_name   = ""
#pdz_counter                     = 0
#vlink_counter                   = 0

tags = {
        "Application Name": "WLP Dev",
        "Application Owner": "hussain.hashimi@dpworld.com",
        "ENV": "DEV"
}