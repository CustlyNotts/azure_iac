subscription_id     = <subscription_id>
name                            = "kv-rostering-dev"
pe_resource_group_name          = "Rg-Rostimadev"
resource_group_name             = "Rg-Rostimadev"
sku_name                        = "standard"
enabled_for_deployment          = true
enabled_for_disk_encryption     = true
enabled_for_template_deployment = true
public_network_access_enabled   = false
purge_protection_enabled        = true
enable_rbac_authorization       = false
subnet_id                       = ["/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/Rg-Vnet/providers/Microsoft.Network/virtualNetworks/Vnet-Rostima/subnets/Snet_Rostima_Dev"]
virtual_network_id              = ["/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/Rg-Vnet/providers/Microsoft.Network/virtualNetworks/Vnet-Rostima"]
counter                         = 0
vlink_counter                   = 0
manual_connection               = false
private_endpoint_name           = ["pe-kvrosteringdev"]
private_service_connection_name = ["pe-kvrosteringdev_1038ca50-6b78-421a-93b5-32d6e041e01e"]
private_dns_zone_group_name     = [""]
private_dns_zone_ids            = [""]
linked_pdz_name                 = [""]
pdz_link_name                   = [""]
pdz_name                        = [""]
pdz_resource_group_name         = [""]
vlink_resource_group_name       = [""]
use_existing_dns                = true

tags =  {
        "Application Name": "Poems Application",
        "Application Owner": "Moinudeen AliAzad",
        "ENV": "DEV"}
