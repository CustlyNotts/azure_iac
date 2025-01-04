#### IMPORT EXISTING PRIVATE ENDPOINT ####
subscription_id     = <subscription_id>
location                        = "UK South"
use_existing_dns                = true
private_endpoint_name           = "kube-apiserver"
pe_resource_group_name          = "mc_rg-cnsprod_aks-cns-prod_uksouth"
subnet_id                       = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/cnsnw/providers/Microsoft.Network/virtualNetworks/CNSNetwork/subnets/snet-cnsprod"
private_service_connection_name = "kube-apiserver"
manual_connection               = false
pdz_name                        = [""]
private_dns_zone_group_name     = ""
private_dns_zone_ids            = [""]
pdz_resource_group_name         = [""]
pdz_link_name                   = [""]
virtual_network_id              = [""]
linked_pdz_name                 = [""]
vlink_resource_group_name       = [""]
sub_resource_id                 = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourcegroups/rg-cnsprod/providers/Microsoft.ContainerService/managedClusters/aks-cns-prod"
sub_resource_names              = ["management"]
azure_private_dns_zone_name     = ""
custom_network_interface_name   = ""
pdz_counter                     = 0
#vlink_counter                   = 0

tags = {
  "Application Name" : "Mawani CNS",
  "Application Owner" : "Daniel/Sachin",
  "ENV" : "PROD",
  "RITM" : "INC0017234"
}