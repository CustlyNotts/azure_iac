#### IMPORT EXISTING PRIVATE ENDPOINT ####
subscription_id     = <subscription_id>
location                        = "UK South"
use_existing_dns                = true
private_endpoint_name           = "pe-sbcns-prod"
pe_resource_group_name          = "rg-cnsprod"
subnet_id                       = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/cnsnw/providers/Microsoft.Network/virtualNetworks/CNSNetwork/subnets/snet-cnsprod"
private_service_connection_name = "pe-sbcns-prod"
manual_connection               = false
pdz_name                        = ["privatelink.servicebus.windows.net"]
private_dns_zone_group_name     = "default"
private_dns_zone_ids            = ["/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/rg-cnsnonprod-sb/providers/Microsoft.Network/privateDnsZones/privatelink.servicebus.windows.net"]
pdz_resource_group_name         = ["rg-cnsnonprod-sb"]
pdz_link_name                   = ["2hdeglrgo2fke"]
virtual_network_id              = ["/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/cnsnw/providers/Microsoft.Network/virtualNetworks/CNSNetwork"]
linked_pdz_name                 = ["privatelink.servicebus.windows.net"]
vlink_resource_group_name       = ["rg-cnsnonprod-sb"]
sub_resource_id                 = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/rg-cnsprod/providers/Microsoft.ServiceBus/namespaces/sb-cns-prod"
sub_resource_names              = ["namespace"]
azure_private_dns_zone_name     = "privatelink.servicebus.windows.net"
custom_network_interface_name   = "pe-sbcns-prod-nic"
#pdz_counter                     = 0
#vlink_counter                   = 0

tags = {
  "Application Name" : "Mawani CNS",
  "Application Owner" : "Daniel/Sachin",
  "ENV" : "PROD"
}