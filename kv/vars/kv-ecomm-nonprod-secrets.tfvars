subscription_id     = <subscription_id>
name                          = "kv-ecomm-nonprod-secrets"
resource_group_name           = "rg-ecommerce-infra-nonprod"
pe_resource_group_name        = "rg-ecommerce-infra-nonprod"
sku_name                      = "standard"
purge_protection_enabled      = false
public_network_access_enabled = true
enable_rbac_authorization     = false
subnet_id                     = ["/subscriptions/039efcb8-56e2-459b-ad3c-68c086e8feb9/resourceGroups/rg-ecommerce-infra-nonprod/providers/Microsoft.Network/virtualNetworks/vnet-ecommerce-nonprod/subnets/snet-ecommerce-dev"]
virtual_network_id            = ["/subscriptions/039efcb8-56e2-459b-ad3c-68c086e8feb9/resourceGroups/rg-ecommerce-infra-nonprod/providers/Microsoft.Network/virtualNetworks/vnet-ecommerce-nonprod"]
# counter=0
# vlink_counter=0
custom_network_interface_name   = "kv-ecomm-nonprod-pe-nic"
enabled_for_deployment          = false
enabled_for_disk_encryption     = false
enabled_for_template_deployment = false
use_existing_dns                = true
use_existing_pe                 = true
vlink_resource_group_name       = ["rg-dnsdomains"]
pdz_resource_group_name         = ["rg-dnsdomains"]
manual_connection               = false
private_endpoint_name           = ["kv-ecomm-nonprod-pe"]
private_service_connection_name = ["kv-ecomm-nonprod-pe"]
private_dns_zone_group_name     = ["default"]
private_dns_zone_ids            = ["/subscriptions/cf524703-9d5e-4aa2-bbe9-975fe083f66a/resourceGroups/rg-dnsdomains/providers/Microsoft.Network/privateDnsZones/privatelink.vaultcore.azure.net"]
linked_pdz_name                 = ["privatelink.vaultcore.azure.net"]
pdz_link_name                   = ["ecomm-vnet-nonprod"]
pdz_name                        = ["privatelink.vaultcore.azure.net"]

tags = {
        "Application Name": "Ecommerce (Dubuy & DM)",
        "Application Owner": "Arup Sarkar",
        "ENV": "DEV"
}