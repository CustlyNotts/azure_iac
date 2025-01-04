subscription_id     = <subscription_id>
name                            = "reddis-rqhost-nauprod"
resource_group_name             = "Rgnauprod"
capacity                        = 2
family                          = "C"
sku                             = "Standard"
enable_non_ssl_port             = true
use_existing_pe                 = true
use_existing_dns                = true
private_endpoint_name           = ["pe-redis-rqhost-nau-production", "prvtlnkredisrqhostprod"]
pe_resource_group_name          = ["Rgnauprod", "Rgnauprod"]
subnet_id                       = ["/subscriptions/ededa550-54e3-4ac7-a6b0-bca51f3c1495/resourceGroups/Rg-nau-production/providers/Microsoft.Network/virtualNetworks/vnet-nau-aks-production/subnets/snet-aks-production", "/subscriptions/ededa550-54e3-4ac7-a6b0-bca51f3c1495/resourceGroups/Rgnauprod/providers/Microsoft.Network/virtualNetworks/vnetnauprod/subnets/aks-nau-prod-cluster"]
private_service_connection_name = ["pe-redis-rqhost-nau-production", "prvtlnkredisrqhostprod"]
manual_connection               = false
pdz_name                        = ["privatelink.redis.cache.windows.net", "privatelink.redis.cache.windows.net"]
private_dns_zone_group_name     = ["default", "default"]
private_dns_zone_ids            = ["/subscriptions/ededa550-54e3-4ac7-a6b0-bca51f3c1495/resourceGroups/Rg-nau-production/providers/Microsoft.Network/privateDnsZones/privatelink.redis.cache.windows.net", "/subscriptions/ededa550-54e3-4ac7-a6b0-bca51f3c1495/resourceGroups/Rgnauprod/providers/Microsoft.Network/privateDnsZones/privatelink.redis.cache.windows.net"]
pdz_resource_group_name         = ["rg-nau-production", "rgnauprod"]
pdz_link_name                   = ["d3qxvi5aj6hya", "wbq6jnxnoowu4"]
virtual_network_id              = ["/subscriptions/ededa550-54e3-4ac7-a6b0-bca51f3c1495/resourceGroups/Rg-nau-production/providers/Microsoft.Network/virtualNetworks/vnet-nau-aks-production", "/subscriptions/ededa550-54e3-4ac7-a6b0-bca51f3c1495/resourceGroups/Rgnauprod/providers/Microsoft.Network/virtualNetworks/vnetnauprod"]
linked_pdz_name                 = ["privatelink.redis.cache.windows.net", "privatelink.redis.cache.windows.net"]
vlink_resource_group_name       = ["rg-nau-production", "rgnauprod"]
vlink_counter                   = 2
pe_counter                      = 2
pdz_counter                     = 2
custom_network_interface_name   = ["", ""]