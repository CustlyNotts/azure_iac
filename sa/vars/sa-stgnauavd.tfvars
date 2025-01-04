subscription_id     = <subscription_id>
name                          = "stgnauavd"
resource_group_name           = "rgnauavd"
account_tier                  = "Premium"
account_kind                  = "FileStorage"
large_file_share_enabled      = true
infrastructure_encryption_enabled = false
account_replication_type      = "LRS"
public_network_access_enabled = true
bypass      = ["AzureServices"]
subnet_ids = [
    "/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rgvnet/providers/Microsoft.Network/virtualNetworks/vnetdpwglb/subnets/Production",
    "/subscriptions/cf524703-9d5e-4aa2-bbe9-975fe083f66a/resourceGroups/rgnwsechub/providers/Microsoft.Network/virtualNetworks/vnetsechub/subnets/dpw_ad_subnet",
    "/subscriptions/ededa550-54e3-4ac7-a6b0-bca51f3c1495/resourceGroups/rgnauavd/providers/Microsoft.Network/virtualNetworks/vnet-nau-avd/subnets/subnauavd"
]

azure_files_authentication = {
    directory_type      = "AD"
    domain_guid         = "19147bb2-797f-4f1a-b05d-cfde61504f77"
    domain_name         = "dpwho.ad"
    domain_sid          = "S-1-5-21-2432089310-66252654-2743235888"
    forest_name         = "dpwho.ad"
    netbios_domain_name = "dpwho.ad"
    storage_sid         = "S-1-5-21-2432089310-66252654-2743235888-41210"
}

tags = {
        "Application Name": "NAU AVD",
        "Application Owner": "Ibrahim Ali Al-Ali",
        "ENV": "PROD"
}
