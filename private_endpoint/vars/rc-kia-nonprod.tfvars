#### CREATE NEW PRIVATE ENDPOINT ####
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

use_existing_pe                 = false
use_existing_dns                = false
private_endpoint_name           = "pe-app-gia-qa"
pe_resource_group_name          = "rg-gia-qa"
subnet_id                       = "/subscriptions/c1ed99db-01ec-4593-92d3-cf4a26a19555/resourceGroups/rg-gia-qa/providers/Microsoft.Network/virtualNetworks/vnet-gia-qa/subnets/snet-gia-qa-pdz"
private_service_connection_name = "psc-app-gia-qa"
manual_connection               = false
pdz_name                        = ["app-gia-qa-privatelink.redis.cache.windows.net"]
private_dns_zone_group_name     = "default"
private_dns_zone_ids            = [""]
pdz_resource_group_name         = ["rg-gia-qa"]
pdz_link_name                   = [""]
virtual_network_id              = ["/subscriptions/c1ed99db-01ec-4593-92d3-cf4a26a19555/resourceGroups/rg-gia-qa/providers/Microsoft.Network/virtualNetworks/vnet-gia-qa"]
linked_pdz_name                 = [""]
vlink_resource_group_name       = ["rg-gia-qa"]
sub_resource_id                 = "/subscriptions/c1ed99db-01ec-4593-92d3-cf4a26a19555/resourceGroups/rg-gia-qa/providers/Microsoft.Web/sites/app-gia-qa"
sub_resource_names              = ["redisCache"]
azure_private_dns_zone_name     = "privatelink.redis.cache.windows.net"
custom_network_interface_name   = " "
pdz_counter                     = 1
vlink_counter                   = 1
