#### IMPORT EXISTING PRIVATE ENDPOINT ####
subscription_id     = <subscription_id>
location                        = "UAE North"
use_existing_dns                = true
private_endpoint_name           = "ep-wlp-prod-postgresql"
pe_resource_group_name          = "rg-wlp-prod"
subnet_id                       = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-prod/providers/Microsoft.Network/virtualNetworks/vnet-wlp-prod-uaenorth/subnets/snet-wlp-prod-native-uaenorth"
private_service_connection_name = "privateserviceconnection-wlp-prod"
manual_connection               = false
pdz_name                        = ["prod.wlp.com"]
private_dns_zone_group_name     = "zone-db-wlp-prod"
private_dns_zone_ids            = ["/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-prod/providers/Microsoft.Network/privateDnsZones/prod.wlp.com"]
pdz_resource_group_name         = ["rg-wlp-prod"]
pdz_link_name                   = ["link-vnet-wlp-prod-uaenorth"]
virtual_network_id              = ["/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-prod/providers/Microsoft.Network/virtualNetworks/vnet-wlp-prod-uaenorth"]
linked_pdz_name                 = ["prod.wlp.com"]
vlink_resource_group_name       = ["rg-wlp-prod"]
sub_resource_id                 = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-prod/providers/Microsoft.DBforPostgreSQL/servers/db-wlp-prod"
sub_resource_names              = ["postgresqlServer"]
azure_private_dns_zone_name     = "prod.wlp.com"
custom_network_interface_name   = ""
#pdz_counter                     = 0
#vlink_counter                   = 0

tags = {
        "Application Name": "WLP prod",
        "Application Owner": "hussain.hashimi@dpworld.com",
        "ENV": "PROD"
}