subscription_id     = <subscription_id>
name                            = "redis-ims-prod"
resource_group_name             = "rg-ecommerce-prod"
capacity                        = 2
family                          = "C"
sku                             = "Standard"
enable_non_ssl_port             = true
use_existing_pe                 = false
use_existing_dns                = true
pe_resource_group_name          = ["rg-ecommerce-prod"]
subnet_id                       = ["/subscriptions/039efcb8-56e2-459b-ad3c-68c086e8feb9/resourceGroups/rg-ecommerce-infra-prod/providers/Microsoft.Network/virtualNetworks/vnet-ecommerce-prod/subnets/snet-ecommerce-prod"]
manual_connection               = false
pdz_name                        = ["privatelink.redis.cache.windows.net"]
private_service_connection_name = ["redis-ims-prod-pe-connection"]
private_endpoint_name           = ["redis-ims-prod-pe"]
private_dns_zone_group_name     = ["default"]
private_dns_zone_ids            = ["/subscriptions/cf524703-9d5e-4aa2-bbe9-975fe083f66a/resourceGroups/rg-dnsdomains/providers/Microsoft.Network/privateDnsZones/privatelink.redis.cache.windows.net"]
pdz_resource_group_name         = ["rg-dnsdomains"]
virtual_network_id              = []
linked_pdz_name                 = []
pdz_link_name                   = []
vlink_resource_group_name       = []
vlink_counter                   = 0
pe_counter                      = 1
pdz_counter                     = 0
custom_network_interface_name   = []



