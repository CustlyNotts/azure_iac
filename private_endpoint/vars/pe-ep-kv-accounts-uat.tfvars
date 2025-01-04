#### IMPORT EXISTING PRIVATE ENDPOINT ####
subscription_id     = <subscription_id>
location                        = "UAE North"
use_existing_dns                = true
private_endpoint_name           = "ep-kv-accounts-uat"
pe_resource_group_name          = "rg-accountsuat"
subnet_id                       = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-accountsuat/providers/Microsoft.Network/virtualNetworks/vnet-accountsuat/subnets/snet-accountsuat"
private_service_connection_name = "ep-kv-accounts-uat"
manual_connection               = false
pdz_name                        = ["privatelink.vaultcore.azure.net"]
private_dns_zone_group_name     = "default"
private_dns_zone_ids            = ["/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-accountsuat/providers/Microsoft.Network/privateDnsZones/privatelink.vaultcore.azure.net"]
pdz_resource_group_name         = ["rg-accountsuat"]
pdz_link_name                   = ["z46szcsrccihc"]
virtual_network_id              = ["/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-accountsuat/providers/Microsoft.Network/virtualNetworks/vnet-accountsuat"]
linked_pdz_name                 = ["privatelink.vaultcore.azure.net"]
vlink_resource_group_name       = ["rg-accountsuat"]
sub_resource_id                 = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-accountsuat/providers/Microsoft.KeyVault/vaults/kv-accounts-uat"
sub_resource_names              = ["vault"]
azure_private_dns_zone_name     = "privatelink.vaultcore.azure.net"
custom_network_interface_name   = "ep-kv-accounts-uat-nic"
#pdz_counter                     = 0
#vlink_counter                   = 0

tags = {
        "Application Name": "aks",
        "Application Owner": "Shaloof/Nowphal",
        "ENV": "DEV"
}