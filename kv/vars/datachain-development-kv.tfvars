subscription_id     = <subscription_id>
name                          = "datachain-development-kv"
resource_group_name           = "datachain-development-uaenorth"
pe_resource_group_name        = "datachain-development-uaenorth"
sku_name                      = "standard"
purge_protection_enabled      = true
public_network_access_enabled = true
enable_rbac_authorization     = false
subnet_id                     = ["/subscriptions/3ddf2459-a8f6-4f71-9fa4-9b3479dbf234/resourceGroups/cargoes-staging/providers/Microsoft.Network/virtualNetworks/cargoes-platform-cluster-staging-green-vnet/subnets/cargoes-platform-cluster-staging-green-subnet-2"]
virtual_network_id            = ["/subscriptions/3ddf2459-a8f6-4f71-9fa4-9b3479dbf234/resourceGroups/cargoes-staging/providers/Microsoft.Network/virtualNetworks/cargoes-platform-cluster-staging-green-vnet"]
# counter=0
# vlink_counter=0
custom_network_interface_name   = "datachain-development-kv-pe-nic"
enabled_for_deployment          = false
enabled_for_disk_encryption     = false
enabled_for_template_deployment = false
use_existing_dns                = true
use_existing_pe                 = true
vlink_resource_group_name       = ["rg-dnsdomains"]
pdz_resource_group_name         = ["rg-dnsdomains"]
manual_connection               = false
private_endpoint_name           = ["datachain-development-kv-pe"]
private_service_connection_name = ["datachain-development-kv-pe"]
private_dns_zone_group_name     = ["default"]
private_dns_zone_ids            = ["/subscriptions/3ddf2459-a8f6-4f71-9fa4-9b3479dbf234/resourceGroups/cargoes-staging/providers/Microsoft.Network/privateDnsZones/privatelink.vaultcore.azure.net"]
linked_pdz_name                 = ["privatelink.vaultcore.azure.net"]
pdz_link_name                   = ["cargoes-platform-cluster-staging-green-vnet"]
pdz_name                        = ["privatelink.vaultcore.azure.net"]

tags = {
        "app-type": "web",
        "application": "datachain",
        "Application Name": "Datachain",
        "Application Owner": "Jay Li/ Jayakrishna Alwar",
        "ENV": "DEV"
}