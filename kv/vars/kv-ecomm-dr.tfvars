subscription_id     = <subscription_id>
name                            = "kv-ecomm-dr"
pe_resource_group_name          = "rg-ecommerce-infra-dr"
resource_group_name             = "rg-ecommerce-infra-dr"
sku_name                        = "standard"
enabled_for_deployment          = false
enabled_for_disk_encryption     = false
enabled_for_template_deployment = false
public_network_access_enabled   = true
purge_protection_enabled        = false
enable_rbac_authorization       = false
subnet_id                       = ["/subscriptions/039efcb8-56e2-459b-ad3c-68c086e8feb9/resourceGroups/rg-ecommerce-infra-dr/providers/Microsoft.Network/virtualNetworks/vnet-ecommerce-dr/subnets/snet-ecommerce-shared-dr"]
virtual_network_id              = ["/subscriptions/039efcb8-56e2-459b-ad3c-68c086e8feb9/resourceGroups/rg-ecommerce-infra-dr/providers/Microsoft.Network/virtualNetworks/vnet-ecommerce-dr"]
#counter                         = 0
#vlink_counter                   = 0
manual_connection               = false
private_endpoint_name           = ["pe-kv-ecom-dr"]
private_service_connection_name = ["pe-kv-ecom-dr"]
private_dns_zone_group_name     = ["default"]
private_dns_zone_ids            = ["/subscriptions/039efcb8-56e2-459b-ad3c-68c086e8feb9/resourceGroups/rg-ecommerce-infra-prod/providers/Microsoft.Network/privateDnsZones/privatelink.vaultcore.azure.net"]
linked_pdz_name                 = ["privatelink.vaultcore.azure.net"]
pdz_link_name                   = ["pe-kv-ecom-dr"]
pdz_name                        = ["privatelink.vaultcore.azure.net"]
pdz_resource_group_name         = ["rg-ecommerce-infra-dr"]
vlink_resource_group_name       = ["rg-ecommerce-infra-dr"]
use_existing_dns                = true

tags =  {
        "Application Name": "Ecommerce (Dubuy & DM)",
        "Application Owner": "Shaloof/Kamlesh",
        "ENV": "PROD"}
