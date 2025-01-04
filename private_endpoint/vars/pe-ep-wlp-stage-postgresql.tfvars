#### IMPORT EXISTING PRIVATE ENDPOINT ####
subscription_id     = <subscription_id>
location                        = "UAE North"
use_existing_dns                = true
private_endpoint_name           = "ep-wlp-stage-postgresql"
pe_resource_group_name          = "rg-wlp-stage"
subnet_id                       = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-stage/providers/Microsoft.Network/virtualNetworks/vnet-wlp-stage-uaenorth/subnets/snet-wlp-stage-native-uaenorth"
private_service_connection_name = "privateserviceconnection-wlp-stage"
manual_connection               = false
private_dns_tags = {"env" = "stage"}
pdz_name                        = ["stage.wlp.com"]
private_dns_zone_group_name     = "zone-db-wlp-stage"
private_dns_zone_ids            = ["/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-stage/providers/Microsoft.Network/privateDnsZones/stage.wlp.com"]
pdz_resource_group_name         = ["rg-wlp-stage"]
pdz_link_name                   = ["link-vnet-wlp-stage-uaenorth"]
virtual_network_id              = ["/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-stage/providers/Microsoft.Network/virtualNetworks/vnet-wlp-stage-uaenorth"]
linked_pdz_name                 = ["stage.wlp.com"]
vlink_resource_group_name       = ["rg-wlp-stage"]
sub_resource_id                 = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-stage/providers/Microsoft.DBforPostgreSQL/servers/db-wlp-stage"
sub_resource_names              = ["postgresqlServer"]
azure_private_dns_zone_name     = "stage.wlp.com"
custom_network_interface_name   = ""
#pdz_counter                     = 0
#vlink_counter                   = 0

tags = {
        "Application Name": "WLP stage",
        "Application Owner": "hussain.hashimi@dpworld.com",
         "ENV"               = "STAGING"
}