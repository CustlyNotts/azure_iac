#### IMPORT EXISTING PRIVATE ENDPOINT ####
subscription_id     = <subscription_id>
location                        = "UAE North"
use_existing_dns                = true
private_endpoint_name           = "kube-apiserver"
pe_resource_group_name          = "rg-wlp-shared-prod"
subnet_id                       = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-prod/providers/Microsoft.Network/virtualNetworks/vnet-wlp-prod-uaenorth/subnets/snet-wlp-prod-aks-uaenorth"
private_service_connection_name = "kube-apiserver"
manual_connection               = false
pdz_name                        = [""]
private_dns_zone_group_name     = "Default"
private_dns_zone_ids            = [""]
pdz_resource_group_name         = [""]
pdz_link_name                   = [""]
virtual_network_id              = [""]
linked_pdz_name                 = [""]
vlink_resource_group_name       = [""]
sub_resource_id                 = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourcegroups/rg-wlp-prod/providers/Microsoft.ContainerService/managedClusters/aks-wlp-prod"
sub_resource_names              = ["postgresqlServer"]
azure_private_dns_zone_name     = ""
custom_network_interface_name   = ""
#pdz_counter                     = 0
#vlink_counter                   = 0

tags = {
        "Application Name": "WLP stage",
        "Application Owner": "hussain.hashimi@dpworld.com",
         "ENV"               = "STAGING"
}