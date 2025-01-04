#### IMPORT EXISTING PRIVATE ENDPOINT ####
subscription_id     = <subscription_id>
resource_group_name             = "rg-bt-preprod"
location                        = "central india"
app_name                        = "mysql-btpreprod"
use_existing_pe                 = true
use_existing_dns                = true
private_endpoint_name           = "ep-bt-preprod"
pe_resource_group_name          = "rg-bt-preprod"
subnet_id                       = "/subscriptions/64421e13-ee76-43d2-93d5-bb5b97858ba5/resourceGroups/rg-btnwhub/providers/Microsoft.Network/virtualNetworks/vnet-btnwhub/subnets/snet-internallb"
private_service_connection_name = "ep-bt-preprod"
manual_connection               = false
pdz_name                        = ["privatelink.mysql.database.azure.com"]
private_dns_zone_group_name     = "default"
private_dns_zone_ids            = ["/subscriptions/64421e13-ee76-43d2-93d5-bb5b97858ba5/resourceGroups/rg-btnwhub/providers/Microsoft.Network/privateDnsZones/privatelink.mysql.database.azure.com"]
pdz_resource_group_name         = ["rg-btnwhub"]
pdz_link_name                   = ["463sa2jpq7uec"]
virtual_network_id              = ["/subscriptions/64421e13-ee76-43d2-93d5-bb5b97858ba5/resourceGroups/rg-btnwhub/providers/Microsoft.Network/virtualNetworks/vnet-btnwhub"]
linked_pdz_name                 = ["privatelink.mysql.database.azure.com"]
vlink_resource_group_name       = ["rg-btnwhub"]
sub_resource_id                 = "/subscriptions/64421e13-ee76-43d2-93d5-bb5b97858ba5/resourceGroups/rg-btdemo/providers/Microsoft.DBforMySQL/flexibleServers/mysql-bt-test"
sub_resource_names              = ["mysqlServer"]
azure_private_dns_zone_name     = "privatelink.mysql.database.azure.com"
custom_network_interface_name   = " "
