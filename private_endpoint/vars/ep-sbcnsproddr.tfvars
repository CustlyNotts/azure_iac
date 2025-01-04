#### IMPORT EXISTING PRIVATE ENDPOINT ####
subscription_id     = <subscription_id>
location                        = "ukwest"
use_existing_dns                = true
private_endpoint_name           = "ep-sbcnsproddr"
pe_resource_group_name          = "rg-cnsdr"
subnet_id                       = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/rg-cnsdr/providers/Microsoft.Network/virtualNetworks/vnet-cnsdr/subnets/snet-cnsdr-ep"
private_service_connection_name = "ep-sbcnsproddr_3e1558e8-dda6-455a-878c-0783a7aa2060"
manual_connection               = false
pdz_name                        = []
private_dns_zone_group_name     = ""
private_dns_zone_ids            = []
pdz_resource_group_name         = []
pdz_link_name                   = []
virtual_network_id              = []
linked_pdz_name                 = []
vlink_resource_group_name       = []
sub_resource_id                 = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/rg-cnsdr/providers/Microsoft.ServiceBus/namespaces/sb-cns-dr"
sub_resource_names              = ["namespace"]
azure_private_dns_zone_name     = ""
custom_network_interface_name   = ""
pdz_counter                     = 0
#vlink_counter                   = 0

tags = {
  "Application Name" : "Mawani CNS",
  "Application Owner" : "Daniel/Sachin",
  "ENV" : "PROD"
}