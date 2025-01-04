#### IMPORT EXISTING PRIVATE ENDPOINT ####
subscription_id     = <subscription_id>
location                        = "uaecentral"
use_existing_dns                = true
private_endpoint_name           = "ep-db-wlp-prod-dr"
pe_resource_group_name          = "rg-wlp-prod-dr"
subnet_id                       = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-prod-dr/providers/Microsoft.Network/virtualNetworks/vnet-wlp-prod-dr-uaecentral/subnets/snet-wlp-prod-dr-native-uaecentral"
private_service_connection_name = "ep-db-wlp-prod-drd"
manual_connection               = false
pdz_name                        = []
private_dns_zone_group_name     = "default"
private_dns_tags                = {}
private_dns_zone_ids            = []
pdz_resource_group_name         = []
pdz_link_name                   = []
vlink_tags                      = {}
virtual_network_id              = []
linked_pdz_name                 = []
vlink_resource_group_name       = []
sub_resource_id                 = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/rg-cnsrundeck-prod/providers/Microsoft.DBforMySQL/servers/db-wlp-prod-dr"
sub_resource_names              = ["mysqlServer"]
azure_private_dns_zone_name     = ""
#custom_network_interface_name   = "ep-cnsrundeck-prod-nic"
pdz_counter                     = 0
vlink_counter                   = 0

tags = {
      "Application Name": "DR Setup",
        "Application Owner": "Nihil Babu",
        "ENV": "PROD"
}