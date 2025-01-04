#### IMPORT EXISTING PRIVATE ENDPOINT ####
subscription_id     = <subscription_id>
resource_group_name = "rg-gia-qa"
location            = "uaenorth"
app_name            = "app-gia-qa"
extra_tags = {
  "Application Name" : "GIA"
  "Application Owner" : "Shaytel Patel"
  "ENV" : "QA"
  "Created By" : "Ayodele Orebe"
}

use_existing_pe                 = true
use_existing_dns                = true
private_endpoint_name           = "private-endpoint-gia-qa"
pe_resource_group_name          = "rg-gia-qa"
subnet_id                       = "/subscriptions/c1ed99db-01ec-4593-92d3-cf4a26a19555/resourceGroups/rg-gia-qa/providers/Microsoft.Network/virtualNetworks/vnet-gia-qa/subnets/snet-gia-qa-pdz"
private_service_connection_name = "prv-svc-conn-gia-qa"
manual_connection               = false
pdz_name                        = ["privatelink.redis.cache.windows.net"]
private_dns_zone_group_name     = "default"
private_dns_zone_ids            = ["/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/MC_rg-cns-dev_aks-cns-dev_uksouth/providers/Microsoft.Network/privateDnsZones/11813079-97c8-4000-b662-6f96c0ab2035.privatelink.uksouth.azmk8s.io"]
pdz_resource_group_name         = ["rg-gia-qa"]
pdz_link_name                   = ["gia-qa-link00236764g2762523"]
virtual_network_id              = ["/subscriptions/c1ed99db-01ec-4593-92d3-cf4a26a19555/resourceGroups/rg-gia-qa/providers/Microsoft.Network/virtualNetworks/vnet-gia-qa"]
linked_pdz_name                 = ["privatelink.redis.cache.windows.net"]
vlink_resource_group_name       = ["rg-gia-qa"]
sub_resource_id                 = "/subscriptions/c1ed99db-01ec-4593-92d3-cf4a26a19555/resourceGroups/rg-gia-qa/providers/Microsoft.Web/sites/app-gia-qa"
sub_resource_names              = ["redisCache"]
azure_private_dns_zone_name     = "privatelink.redis.cache.windows.net"
custom_network_interface_name   = " "
