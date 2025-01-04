subscription_id     = <subscription_id>
name                            = "rc-cargoesflow-dr"
resource_group_name             = "rg-cargoesflow-prod-dr"
capacity                        = 3
family                          = "C"
sku                             = "Standard"
enable_non_ssl_port             = true
use_existing_pe                 = true
use_existing_dns                = true
private_endpoint_name           = ["pvt-cargoesflow-rediscache"]
pe_resource_group_name          = ["rg-cargoesflow-prod-dr"]
subnet_id                       = ["/subscriptions/226040e8-5c0e-44f2-8915-1afed1732440/resourceGroups/rg-cargoesflow-dr-infra/providers/Microsoft.Network/virtualNetworks/vnet-cargoesflow-dr/subnets/snet-nonaks-prod-dr"]
private_service_connection_name = ["pvt-cargoesflow-rediscache_cc5e0e95-2fd4-4928-a68e-706eeb01c034"]
manual_connection               = false
pdz_name                        = [""]
private_dns_zone_group_name     = ["default"]
private_dns_zone_ids            = [""]
pdz_resource_group_name         = [""]
pdz_link_name                   = [""]
virtual_network_id              = [""]
linked_pdz_name                 = [""]
vlink_resource_group_name       = [""]
custom_network_interface_name   = [""]
pdz_counter                     = 0
vlink_counter                   = 0