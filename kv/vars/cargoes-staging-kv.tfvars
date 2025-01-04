subscription_id     = <subscription_id>
name                            = "cargoes-staging-kv"
resource_group_name             = "cargoes-staging"
sku_name                        = "standard"
enabled_for_deployment          = false
enabled_for_disk_encryption     = false
enabled_for_template_deployment = false
public_network_access_enabled   = true
purge_protection_enabled        = true
enable_rbac_authorization       = false
subnet_id                       = [/subscriptions/3ddf2459-a8f6-4f71-9fa4-9b3479dbf234/resourceGroups/cargoes-staging/providers/Microsoft.Network/virtualNetworks/cargoes-platform-cluster-staging-vnet/subnets/cargoes-platform-cluster-staging-subnet-1"]
virtual_network_id              = ["/subscriptions/3ddf2459-a8f6-4f71-9fa4-9b3479dbf234/resourceGroups/cargoes-staging/providers/Microsoft.Network/virtualNetworks/cargoes-platform-cluster-staging-vnet"]
#counter                         = 0
#vlink_counter                   = 0
manual_connection               = false
private_endpoint_name           = ["cargoes-logistics-staging-kv-priv-endpt"]
private_service_connection_name = ["cargoes-logistics-staging-kv-priv-endpt_c442ada1-de0a-4a38-872f-5f6b991ee023"]
private_dns_zone_group_name     = ["default"]
private_dns_zone_ids            = ["/subscriptions/3ddf2459-a8f6-4f71-9fa4-9b3479dbf234/resourceGroups/cargoes-staging/providers/Microsoft.Network/privateDnsZones/privatelink.vaultcore.azure.net"]
linked_pdz_name                 = ["privatelink.vaultcore.azure.net"]
pdz_link_name                   = ["63575dmga3b2k"]
pdz_name                        = ["privatelink.vaultcore.azure.net"]
pdz_resource_group_name         = ["cargoes-staging"]
vlink_resource_group_name       = ["cargoes-staging"]

tags =  {
        "Application Name": "Cargoes Platform",
        "Application Owner": "MRavi Pandey",
        "ENV": "TESTING"
}