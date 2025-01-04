subscription_id     = <subscription_id>
name                          = "kv-cargoescustoms-dev"
resource_group_name           = "rg-cargoescustoms-dev"
pe_resource_group_name        = "rg-cargoescustoms-dev"
sku_name                      = "standard"
purge_protection_enabled      = true
public_network_access_enabled = true
enable_rbac_authorization     = false
subnet_id                     = ["/subscriptions/3b33091e-1cdc-4ea3-a1a9-112226376c1b/resourceGroups/rg-cargoescustoms-infra-dev/providers/Microsoft.Network/virtualNetworks/vnet-cargoescustoms-dev/subnets/snet-Pl-cargoes-customs-dev"]
virtual_network_id            = ["/subscriptions/3b33091e-1cdc-4ea3-a1a9-112226376c1b/resourceGroups/rg-cargoescustoms-infra-dev/providers/Microsoft.Network/virtualNetworks/vnet-cargoescustoms-dev"]
counter=0
vlink_counter=0
custom_network_interface_name   = "pe-kv-ccs-dev.nic.6730f269-d281-4bb5-a1ff-2ae12eb9d092"
enabled_for_deployment          = false
enabled_for_disk_encryption     = false
enabled_for_template_deployment = false
use_existing_dns                = true
use_existing_pe                 = true
vlink_resource_group_name       = [""]
pdz_resource_group_name         = [""]
manual_connection               = false
private_endpoint_name           = ["pe-kv-ccs-dev"]
private_service_connection_name = ["pe-kv-ccs-dev_fdb6992f-0ad1-4ec5-b999-51a902491030"]
private_dns_zone_group_name     = ["default"]
private_dns_zone_ids            = []
linked_pdz_name                 = []
pdz_link_name                   = []
pdz_name                        = []

tags = {
        "Application Name": "Cargoes Customs",
        "Application Owner": "Vijahat Trunboo",
        "ENV": "DEV"
}