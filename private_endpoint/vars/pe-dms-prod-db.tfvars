subscription_id     = <subscription_id>
location                        = "uaenorth"
use_existing_dns                = false
private_endpoint_name           = "pe-dms-prod-db"
pe_resource_group_name          = "rg-dms-prod"
subnet_id                       = "/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rg-dms-prod/providers/Microsoft.Network/virtualNetworks/vnet-dms-prod/subnets/snet-dms-db-prod"
private_service_connection_name = "pe-dms-prod-db"
manual_connection               = false
sub_resource_id                 = "/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rg-dms-prod/providers/Microsoft.Sql/servers/sql-dmsdpw-prod"
sub_resource_names              = ["sqlServer"]
azure_private_dns_zone_name     = "privatelink.database.windows.net"
custom_network_interface_name   = "pe-dms-prod-db-nic"
pdz_name                        = ["privatelink.database.windows.net"]
#pdz_counter                    = "0"
#vlink_counter                  = "0"
pdz_link_name                   = ["private-database-windows"]
virtual_network_id              = ["/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rg-dms-prod/providers/Microsoft.Network/virtualNetworks/vnet-dms-prod"]
vlink_resource_group_name       = ["rg-dms-prod"]
linked_pdz_name                 = ["privatelink.database.windows.net"]
private_dns_zone_ids            = ["/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rg-dms-prod/providers/Microsoft.Network/privateDnsZones/privatelink.database.windows.net"]
private_dns_zone_group_name     = "rg-dms-prod"
pdz_resource_group_name = ["rg-dms-prod"]
tags = {
  "Application Name" = "DMS"
  "Application Owner" = "Kapil/Rhoderick"
  "ENV" = "PROD"
  "Creator" = "velazadmin"
}
