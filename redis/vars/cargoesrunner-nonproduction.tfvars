subscription_id     = <subscription_id>
name                            = "cargoesrunner-nonproduction"
resource_group_name             = "rg_cargoesRunner_dev"
capacity                        = 1
family                          = "P"
sku                             = "Premium"
enable_non_ssl_port             = true
use_existing_pe                 = true
use_existing_dns                = true
pe_resource_group_name          = ["rg_cargoesRunner_dev"]
private_endpoint_name           = ["cargoesrunner-nonproduction-redis"]
subnet_id                       = ["/subscriptions/99a847a3-1033-4a6d-a9bb-41a087e8c982/resourceGroups/rg_cargoesRunner_Vnet_nonprod/providers/Microsoft.Network/virtualNetworks/vnet-cargoesRunnernonprod/subnets/snet-nonprod"]
private_service_connection_name = ["cargoesrunner-nonproduction-redis"]
manual_connection               = false
pdz_name                        = ["privatelink.redis.cache.windows.net"]
private_dns_zone_group_name     = ["cargoesrunner-nonproduction"]
private_dns_zone_ids            = ["/subscriptions/99a847a3-1033-4a6d-a9bb-41a087e8c982/resourceGroups/rg_cargoesrunner_vnet_nonprod/providers/Microsoft.Network/privateDnsZones/privatelink.redis.cache.windows.net"]
pdz_resource_group_name         = ["rg_cargoesrunner_vnet_nonprod"]
pdz_link_name                   = ["cargoesrunner-nonproduction"]
virtual_network_id              = ["/subscriptions/99a847a3-1033-4a6d-a9bb-41a087e8c982/resourceGroups/rg_cargoesRunner_Vnet_nonprod/providers/Microsoft.Network/virtualNetworks/vnet-cargoesRunnernonprod"]
vlink_resource_group_name       = ["rg_cargoesrunner_vnet_nonprod"]
linked_pdz_name                 = ["cargoesrunner-nonproduction"]
custom_network_interface_name   = [""]