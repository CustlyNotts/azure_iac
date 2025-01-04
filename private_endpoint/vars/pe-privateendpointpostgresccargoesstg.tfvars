#### IMPORT EXISTING PRIVATE ENDPOINT ####
subscription_id     = <subscription_id>
location                        = "UAE North"
use_existing_dns                = true
private_endpoint_name           = "privateendpointpostgresccargoesstg"
pe_resource_group_name          = "rg-cargoes-app"
subnet_id                       = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-cargoes-app/providers/Microsoft.Network/virtualNetworks/vnet-cargoes-customs/subnets/snet-aks-cargoes-customs-stg"
private_service_connection_name = "privateendpointpostgresccargoesstg"
manual_connection               = false
pdz_name                        = ["privatelink.postgres.database.azure.com"]
private_dns_zone_group_name     = "default"
private_dns_zone_ids            = ["/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-cargoes-app/providers/Microsoft.Network/privateDnsZones/privatelink.postgres.database.azure.com"]
pdz_resource_group_name         = ["rg-cargoes-app"]
pdz_link_name                   = ["ndgiiymaa7yl2"]
virtual_network_id              = ["/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-cargoes-app/providers/Microsoft.Network/virtualNetworks/vnet-cargoes-app"]
linked_pdz_name                 = ["privatelink.postgres.database.azure.com"]
vlink_resource_group_name       = ["rg-cargoes-app"]
sub_resource_id                 = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-cargoes-app/providers/Microsoft.DBforPostgreSQL/servers/pgccargoes-stg"
sub_resource_names              = ["postgresqlServer"]
azure_private_dns_zone_name     = "privatelink.postgres.database.azure.com"
private_dns_tags = {"CreatedBy" = "Moin.AZAdmin"}
custom_network_interface_name   = ""
#pdz_counter                     = 0
#vlink_counter                   = 0

tags =  {
        "Application Name": "Cargoes app",
        "Application Owner": "hussain.hashimi@dpworld.com",
        "ENV": "DEV"}