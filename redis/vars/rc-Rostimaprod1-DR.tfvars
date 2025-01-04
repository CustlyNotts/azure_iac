subscription_id     = <subscription_id>
name                            = "Rostimaprod1-DR"
resource_group_name             = "Rg-Rostima-DR"
capacity                        = 3
family                          = "C"
sku                             = "Standard"
enable_non_ssl_port             = true
use_existing_pe                 = true
use_existing_dns                = true
private_endpoint_name           = ["pe-Rostimaprod1"]
pe_resource_group_name          = ["Rg-Rostima-DR"]
subnet_id                       = ["/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/Rg-Rostima-DR/providers/Microsoft.Network/virtualNetworks/Vnet-Rostima-DR/subnets/Snet_Rostima_DR"]
private_service_connection_name = ["pe-Rostimaprod1_cc2f7ec3-ed11-4b0b-8928-620158d89020"]
manual_connection               = false
pdz_name                        = ["privatelink.redis.cache.windows.net"]
private_dns_zone_group_name     = ["default"]
private_dns_zone_ids            = ["/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/rgpoemseur/providers/Microsoft.Network/privateDnsZones/privatelink.redis.cache.windows.net"]
pdz_resource_group_name         = ["rgpoemseur"]
pdz_link_name                   = ["fhmllljkkufoy", "mlsqgh66ugnyk", "vnet-eursechub"]
virtual_network_id              = ["/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/Rg-Rostima-DR/providers/Microsoft.Network/virtualNetworks/Vnet-Rostima-DR", "/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/Rgpoemseur/providers/Microsoft.Network/virtualNetworks/vnet-poemseurprod", "/subscriptions/1b37d994-cdaf-4d33-b73d-afb406d36357/resourceGroups/rg-eur-sechub/providers/Microsoft.Network/virtualNetworks/EUR-Vnetsechub"]
linked_pdz_name                 = ["privatelink.redis.cache.windows.net"]
vlink_resource_group_name       = ["rgpoemseur"]
custom_network_interface_name   = [""]