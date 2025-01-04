subscription_id     = <subscription_id>
resource_group_name     = "rg-gia-qa"
location                = "uaenorth"
app_service_custom_name = "app-gia-qa"
extra_tags = {
  "Application Name" : "GIA"
  "Application Owner" : "Shaytel Patel"
  "ENV" : "QA"
  "Created By" : "Ayodele Orebe"
}

use_existing_pe                 = false
use_existing_dns                = false
private_endpoint_name           = []
subnet_id                       = ["/subscriptions/c1ed99db-01ec-4593-92d3-cf4a26a19555/resourceGroups/rg-gia-qa/providers/Microsoft.Network/virtualNetworks/vnet-gia-qa/subnets/snet-gia-qa-pdz"]
private_service_connection_name = []
manual_connection               = false
pdz_name                        = []
private_dns_zone_group_name     = []
private_dns_zone_ids            = []
pdz_resource_group_name         = ["rg-gia-qa"]
pdz_link_name                   = []
virtual_network_id              = ["/subscriptions/c1ed99db-01ec-4593-92d3-cf4a26a19555/resourceGroups/rg-gia-qa/providers/Microsoft.Network/virtualNetworks/vnet-gia-qa"]
linked_pdz_name                 = []
vlink_resource_group_name       = ["rg-gia-qa"]
sub_resource_id                 = "/subscriptions/c1ed99db-01ec-4593-92d3-cf4a26a19555/resourceGroups/rg-gia-qa/providers/Microsoft.Web/sites/app-gia-qa"
