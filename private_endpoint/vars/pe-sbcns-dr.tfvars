#### IMPORT EXISTING PRIVATE ENDPOINT ####
subscription_id     = <subscription_id>
location                        = "ukwest"
use_existing_dns                = true
private_endpoint_name           = "pe-sbcns-dr"
pe_resource_group_name          = "rg-cnsdr"
subnet_id                       = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/rg-cnsdr/providers/Microsoft.Network/virtualNetworks/vnet-cnsdr/subnets/snet-cnsdr"
private_service_connection_name = "pe-sbcns-dr"
manual_connection               = false
pdz_name                        = ["privatelink.servicebus.windows.net"]
private_dns_zone_group_name     = "default"
private_dns_zone_ids            = ["/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/rg-cnsdr/providers/Microsoft.Network/privateDnsZones/privatelink.servicebus.windows.net"]
pdz_resource_group_name         = ["rg-cnsdr"]
pdz_link_name                   = ["b4nn2252xa3em"]
virtual_network_id              = ["/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/rg-cnsdr/providers/Microsoft.Network/virtualNetworks/vnet-cnsdr"]
linked_pdz_name                 = ["privatelink.servicebus.windows.net"]
vlink_resource_group_name       = ["rg-cnsdr"]
sub_resource_id                 = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/rg-cnsdr/providers/Microsoft.ServiceBus/namespaces/sb-cns-dr"
sub_resource_names              = ["namespace"]
azure_private_dns_zone_name     = "privatelink.servicebus.windows.net"
custom_network_interface_name   = "pe-sbcns-dr-nic"
#pdz_counter                     = 0
#vlink_counter                   = 0

tags = {
  "Application Name" : "Mawani CNS",
  "Application Owner" : "Daniel/Sachin",
  "ENV" : "DR"
}