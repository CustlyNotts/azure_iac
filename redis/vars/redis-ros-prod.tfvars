subscription_id     = <subscription_id>
name                            = "redis-ros-prod"
resource_group_name             = "rg-ros-prod"
capacity                        = 1
family                          = "P"
sku                             = "Premium"
enable_non_ssl_port             = true
use_existing_pe                 = true
use_existing_dns                = true
private_endpoint_name           = ["pe-redis-ros-prod"]
pe_resource_group_name          = ["rg-ros-prod"]
subnet_id                       = ["/subscriptions/3f73c166-e295-4b4f-a2bc-ef5a0a63b7a4/resourceGroups/rg-ros-prod/providers/Microsoft.Network/virtualNetworks/vnet-ros-prod/subnets/snet-ros-shared"]
private_service_connection_name = ["pe-redis-ros-prod_289c29f0-a766-4fbf-b266-82d8ccab6067"]
manual_connection               = false
pdz_name                        = ["privatelink.redis.cache.windows.net"]
private_dns_zone_group_name     = ["default"]
private_dns_zone_ids            = ["/subscriptions/3f73c166-e295-4b4f-a2bc-ef5a0a63b7a4/resourceGroups/rg-ros-prod/providers/Microsoft.Network/privateDnsZones/privatelink.redis.cache.windows.net"]
pdz_resource_group_name         = ["rg-ros-prod"]
pdz_link_name                   = ["d6w5wgvg3gbsy", "rosjx5nveyevk"]
virtual_network_id              = ["/subscriptions/3f73c166-e295-4b4f-a2bc-ef5a0a63b7a4/resourceGroups/rg-ros-nonprod/providers/Microsoft.Network/virtualNetworks/Vnet-ROS-NonProd", "/subscriptions/3f73c166-e295-4b4f-a2bc-ef5a0a63b7a4/resourceGroups/rg-ros-prod/providers/Microsoft.Network/virtualNetworks/vnet-ros-prod"]
linked_pdz_name                 = ["privatelink.redis.cache.windows.net", "privatelink.redis.cache.windows.net"]
vlink_resource_group_name       = ["rg-ros-prod", "rg-ros-prod"]
vlink_counter                   = 2
custom_network_interface_name   = [""]