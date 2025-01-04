subscription_id     = <subscription_id>
name                            = "rc-npmabbs-prod"
resource_group_name             = "rg-npm_abbs-prod"
capacity                        = 3
family                          = "C"
sku                             = "Standard"
enable_non_ssl_port             = true
use_existing_pe                 = false
use_existing_dns                = true
private_endpoint_name           = [""]
pe_resource_group_name          = ["rg-npm_abbs-prod"]
subnet_id                       = ["/subscriptions/a3e25ce2-341c-4f68-b42d-0ec5f349a526/resourceGroups/rg-cargoeslogisticsdev-infra/providers/Microsoft.Network/virtualNetworks/vnet-cargoesLogisitics_dev/subnets/snet-nonprod-dev"]
private_service_connection_name = [""]
manual_connection               = false
pdz_name                        = ["privatelink.redis.cache.windows.net"]
private_dns_zone_group_name     = ["default"]
private_dns_zone_ids            = ["/subscriptions/a3e25ce2-341c-4f68-b42d-0ec5f349a526/resourceGroups/rg-cargoeslogisticsdev-infra/providers/Microsoft.Network/privateDnsZones/privatelink.redis.cache.windows.net"]
pdz_resource_group_name         = ["rg-cargoeslogisticsdev-infra"]
pdz_link_name                   = [""]
virtual_network_id              = ["/subscriptions/a3e25ce2-341c-4f68-b42d-0ec5f349a526/resourceGroups/rg-cargoeslogisticsdev-infra/providers/Microsoft.Network/virtualNetworks/vnet-cargoesLogisitics_dev"]
linked_pdz_name                 = ["privatelink.redis.cache.windows.net"]
vlink_resource_group_name       = ["rg-cargoeslogisticsdev-infra"]
vlink_counter                   = 1
#pe_counter                      = 2
pdz_counter                     = 1
custom_network_interface_name   = [""]


