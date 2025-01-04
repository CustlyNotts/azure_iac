
subscription_id     = <subscription_id>
name                          = "stccsdev"
resource_group_name           = "rg-cargoescustoms-dev"
account_tier                  = "Standard"
account_kind                  = "StorageV2"
#large_file_share_enabled      = true
account_replication_type      = "LRS"
infrastructure_encryption_enabled = false
allow_nested_items_to_be_public   = true
public_network_access_enabled = true
min_tls_version               = "TLS1_2"
cross_tenant_replication_enabled = "true"
#allowed_ips = []
bypass      = ["AzureServices"]
all_network_access_enabled = true
allowed_ips = ["20.203.123.34", "20.216.39.153"]
tags      = {

        "PublicAccessAllowed": "RITM0075974",
        "PublicAccessInfo": "Unable to Integrate Form recognizer service with private storage account",
        "Application Name": "Cargoes Customs",
        "Application Owner": "Vijahat Trunboo",
        "ENV": "DEV"
} 

subnet_ids = [
   "/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rg-wvd-global/providers/Microsoft.Network/virtualNetworks/VnetWVDall/subnets/wvd-sub1",
   "/subscriptions/3b33091e-1cdc-4ea3-a1a9-112226376c1b/resourceGroups/rg-cargoescustoms-infra-dev/providers/Microsoft.Network/virtualNetworks/vnet-cargoescustoms-dev/subnets/snet-aksnode-cargoes-customs-dev",
   "/subscriptions/3b33091e-1cdc-4ea3-a1a9-112226376c1b/resourceGroups/rg-cargoescustoms-infra-dev/providers/Microsoft.Network/virtualNetworks/vnet-cargoescustoms-dev/subnets/snet-aksnode-cargoes-customs-stg",
    "/subscriptions/3b33091e-1cdc-4ea3-a1a9-112226376c1b/resourceGroups/rg-cargoescustoms-infra-dev/providers/Microsoft.Network/virtualNetworks/vnet-cargoescustoms-dev/subnets/snet-akspod-cargoes-customs-dev",
    "/subscriptions/3b33091e-1cdc-4ea3-a1a9-112226376c1b/resourceGroups/rg-cargoescustoms-infra-dev/providers/Microsoft.Network/virtualNetworks/vnet-cargoescustoms-dev/subnets/snet-akspod-cargoes-customs-stg",
    "/subscriptions/3b33091e-1cdc-4ea3-a1a9-112226376c1b/resourceGroups/rg-cargoescustoms-infra-dev/providers/Microsoft.Network/virtualNetworks/vnet-cargoescustoms-dev/subnets/snet-bastion-cargoes-customs",
    "/subscriptions/3b33091e-1cdc-4ea3-a1a9-112226376c1b/resourceGroups/rg-cargoescustoms-infra-dev/providers/Microsoft.Network/virtualNetworks/vnet-cargoescustoms-dev/subnets/snet-lb-cargoes-customs-dev",
    "/subscriptions/3b33091e-1cdc-4ea3-a1a9-112226376c1b/resourceGroups/rg-cargoescustoms-infra-dev/providers/Microsoft.Network/virtualNetworks/vnet-cargoescustoms-dev/subnets/snet-lb-cargoes-customs-stg",
    "/subscriptions/3b33091e-1cdc-4ea3-a1a9-112226376c1b/resourceGroups/rg-cargoescustoms-infra-dev/providers/Microsoft.Network/virtualNetworks/vnet-cargoescustoms-dev/subnets/snet-psql-cargoes-customs-dev"

]

network_rules = {
    default_action= "Allow"
}

 private_link_access = {
    content = {
        endpoint_resource_id = "/subscriptions/3b33091e-1cdc-4ea3-a1a9-112226376c1b/resourcegroups/rg-cargoescustoms-dev/providers/Microsoft.CognitiveServices/accounts/fr-ccs-dev"
        endpoint_tenant_id   = "2bd16c9b-7e21-4274-9c06-7919f7647bbb"
 }
}