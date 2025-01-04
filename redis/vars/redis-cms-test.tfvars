subscription_id     = <subscription_id>
name                            = "redis-cms-test"
resource_group_name             = "rg-ecommerce-dev"
capacity                        = 1
family                          = "C"
sku                             = "Standard"
enable_non_ssl_port             = false
use_existing_pe                 = true
use_existing_dns                = true
private_endpoint_name           = ["redis-cms-test"]
pe_resource_group_name          = ["rg-ecommerce-dev"]
subnet_id                       = ["/subscriptions/039efcb8-56e2-459b-ad3c-68c086e8feb9/resourceGroups/rg-ecommerce-infra-nonprod/providers/Microsoft.Network/virtualNetworks/vnet-ecommerce-nonprod/subnets/snet-ecommerce-dev"]
private_service_connection_name = ["redis-cms-test"]
manual_connection               = false
pdz_name                        = ["privatelink.redis.cache.windows.net"]
private_dns_zone_group_name     = ["default"]
private_dns_zone_ids            = ["/subscriptions/cf524703-9d5e-4aa2-bbe9-975fe083f66a/resourceGroups/rg-dnsdomains/providers/Microsoft.Network/privateDnsZones/privatelink.redis.cache.windows.net"]
pdz_resource_group_name         = ["rg-dnsdomains"]
pdz_link_name                   = ["vnet-cargoesflow-dev", "vnet-ecommerce-nonprod", "vnet-ecommerce-prod"]
virtual_network_id              = ["/subscriptions/226040e8-5c0e-44f2-8915-1afed1732440/resourceGroups/rg-cargoesflow-infra/providers/Microsoft.Network/virtualNetworks/vnet-cargoesflow-dev", "/subscriptions/039efcb8-56e2-459b-ad3c-68c086e8feb9/resourceGroups/rg-ecommerce-infra-nonprod/providers/Microsoft.Network/virtualNetworks/vnet-ecommerce-nonprod", "/subscriptions/039efcb8-56e2-459b-ad3c-68c086e8feb9/resourceGroups/rg-ecommerce-infra-prod/providers/Microsoft.Network/virtualNetworks/vnet-ecommerce-prod"]
linked_pdz_name                 = ["privatelink.redis.cache.windows.net", "privatelink.redis.cache.windows.net", "privatelink.redis.cache.windows.net"]
vlink_resource_group_name       = ["rg-dnsdomains", "rg-dnsdomains", "rg-dnsdomains"]
vlink_counter                   = 3
custom_network_interface_name   = ["redis-cms-test-nic"]