subscription_id     = <subscription_id>
name                            = "Rostimaprod1"
resource_group_name             = "Rg-Rostima-Prod"
capacity                        = 3
family                          = "C"
sku                             = "Standard"
enable_non_ssl_port             = false
use_existing_pe                 = true
use_existing_dns                = true
private_endpoint_name           = ["pe-Rostimaprod1-redis"]
pe_resource_group_name          = ["Rg-Rostima-Prod"]
subnet_id                       = ["/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/Rg-Vnet/providers/Microsoft.Network/virtualNetworks/Vnet-Rostima/subnets/Snet_Rostima_Prod"]
private_service_connection_name = ["pe-Rostimaprod1-redis"]
manual_connection               = false
pdz_name                        = [""]
private_dns_zone_group_name     = [""]
private_dns_zone_ids            = [""]
pdz_resource_group_name         = [""]
pdz_link_name                   = [""]
virtual_network_id              = [""]
linked_pdz_name                 = [""]
vlink_resource_group_name       = [""]
custom_network_interface_name   = [""]