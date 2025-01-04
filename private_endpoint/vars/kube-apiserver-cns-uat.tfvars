#### IMPORT EXISTING PRIVATE ENDPOINT ####
subscription_id     = <subscription_id>
location                        = "UK South"
use_existing_dns                = true
private_endpoint_name           = "kube-apiserver"
pe_resource_group_name          = "mc_rg-cnsuat_aks-cns-uat_uksouth"
subnet_id                       = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/cnsnw/providers/Microsoft.Network/virtualNetworks/CNSNetwork/subnets/UAT1"
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
sub_resource_id                 = "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourcegroups/rg-cnsuat/providers/Microsoft.ContainerService/managedClusters/aks-cns-uat"
sub_resource_names              = ["management"]
azure_private_dns_zone_name     = ""
custom_network_interface_name   = ""
pdz_counter                     = 0
#vlink_counter                   = 0

tags = {
  "Application Name" : "Mawani CNS",
  "Application Owner" : "Daniel/Sachin",
  "ENV" : "UAT",
  "RITM" : "REQ0051922",
  "scheduler" : "off=(M-F,22);on=(M-F,8);tz=Asia/Dubai"
}