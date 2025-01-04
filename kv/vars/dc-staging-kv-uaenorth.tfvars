subscription_id     = <subscription_id>
name                            = "dc-staging-kv-uaenorth"
resource_group_name             = "datachain-staging-uaenorth"
sku_name                        = "standard"
counter                         = 0
vlink_counter                   = 0
subnet_id                       = []
virtual_network_id              = []
custom_network_interface_name   = "dc-staging-kv-uaenorth-pe-nic"
use_existing_dns                = true
use_existing_pe                 = true
vlink_resource_group_name       = ["rg-dnsdomains"]
pdz_resource_group_name         = ["rg-dnsdomains"]
manual_connection               = false
private_endpoint_name           = ["dc-staging-kv-uaenorth-pe"]
private_service_connection_name = ["dc-staging-kv-uaenorth-pe"]
private_dns_zone_group_name     = ["default"]
private_dns_zone_ids            = ["/subscriptions/3ddf2459-a8f6-4f71-9fa4-9b3479dbf234/resourceGroups/cargoes-staging/providers/Microsoft.Network/privateDnsZones/privatelink.vaultcore.azure.net"]
linked_pdz_name                 = ["privatelink.vaultcore.azure.net"]
pdz_link_name                   = ["cargoes-platform-cluster-staging-green-vnet"]
pdz_name                        = ["privatelink.vaultcore.azure.net"]

enable_rbac_authorization       = false 
enabled_for_deployment          = false 
enabled_for_disk_encryption     = false
enabled_for_template_deployment = false
public_network_access_enabled   = true
purge_protection_enabled        = true

tags = {
        "Application Name": "Datachain",
        "Application Owner": "Jay Li/ Jayakrishna Alwar",
        "ENV": "STAGING"
}