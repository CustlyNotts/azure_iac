subscription_id     = <subscription_id>
name                            = "reddis-channel-nauprod"
resource_group_name             = "Rgnauprod"
capacity                        = 2
family                          = "C"
sku                             = "Standard"
enable_non_ssl_port             = true
use_existing_pe                 = true
use_existing_dns                = true
private_endpoint_name           = ["prvtlnkredis_channel_prod", "pe-redischannel-nau-production"]
pe_resource_group_name          = ["Rgnauprod", "Rgnauprod"]
subnet_id                       = ["/subscriptions/ededa550-54e3-4ac7-a6b0-bca51f3c1495/resourceGroups/Rgnauprod/providers/Microsoft.Network/virtualNetworks/vnetnauprod/subnets/nau-prod-shared", "/subscriptions/ededa550-54e3-4ac7-a6b0-bca51f3c1495/resourceGroups/Rg-nau-production/providers/Microsoft.Network/virtualNetworks/vnet-nau-aks-production/subnets/snet-aks-production"]
private_service_connection_name = ["prvtlnkredis_channel_prod", "pe-redischannel-nau-production"]
manual_connection               = false
pdz_name                        = ["privatelink.redis.cache.windows.net", "privatelink.redis.cache.windows.net"]
private_dns_zone_group_name     = ["default", "default"]
private_dns_zone_ids            = ["/subscriptions/ededa550-54e3-4ac7-a6b0-bca51f3c1495/resourceGroups/Rgnauprod/providers/Microsoft.Network/privateDnsZones/privatelink.redis.cache.windows.net", ]
pdz_resource_group_name         = ["rgnauprod", "rg-nau-production"]
pdz_link_name                   = ["wbq6jnxnoowu4", "d3qxvi5aj6hya"]
virtual_network_id              = ["/subscriptions/ededa550-54e3-4ac7-a6b0-bca51f3c1495/resourceGroups/Rgnauprod/providers/Microsoft.Network/virtualNetworks/vnetnauprod", "/subscriptions/ededa550-54e3-4ac7-a6b0-bca51f3c1495/resourceGroups/Rg-nau-production/providers/Microsoft.Network/virtualNetworks/vnet-nau-aks-production"]
linked_pdz_name                 = ["privatelink.redis.cache.windows.net", "privatelink.redis.cache.windows.net"]
vlink_resource_group_name       = ["rgnauprod", "rg-nau-production"]
vlink_counter                   = 2
pe_counter                      = 2
pdz_counter                     = 2
custom_network_interface_name   = ["", ""]