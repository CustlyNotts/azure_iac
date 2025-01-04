#### IMPORT EXISTING PRIVATE ENDPOINT ####
subscription_id     = <subscription_id>
location                        = "Canada Central"
use_existing_dns                = true
private_endpoint_name           = "kube-apiserver"
pe_resource_group_name          = "mc_rg-cargoescanada-preprod_aks-cargoescanada-preprod_canadacentral"
subnet_id                       = "/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/rg-cargoescanada-preprod/providers/Microsoft.Network/virtualNetworks/vnet-cargoescanada-preprod/subnets/snet-cargoescanada-preprod"
private_service_connection_name = "kube-apiserver"
manual_connection               = false
pdz_name                        = []
private_dns_zone_group_name     = "default"
private_dns_zone_ids            = []
pdz_resource_group_name         = []
pdz_link_name                   = []
virtual_network_id              = []
linked_pdz_name                 = []
vlink_resource_group_name       = []
sub_resource_id                 = "/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourcegroups/rg-cargoescanada-preprod/providers/Microsoft.ContainerService/managedClusters/aks-cargoescanada-preprod"
sub_resource_names              = ["management"]
azure_private_dns_zone_name     = ""
custom_network_interface_name   = ""
pdz_counter                     = 0
vlink_counter                   = 0

tags = {
              "Application Name": "Mawani CNS",
        "Application Owner": "Daniel Stuart",
        "ENV": "PREPROD",
        "scheduler": "off=(M-S,8);on=(M-F,19);tz=Asia/Dubai"
}
