
subscription_id     = <subscription_id>
name                          = "stccsprd"
resource_group_name           = "rg-cargoescustoms-prod"
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
allowed_ips = []
tags      = {

        "PublicAccessAllowed": "RITM0075974",
        "PublicAccessInfo": "Unable to Integrate Form recognizer service with private storage account",
        "Application Name": "",
        "Application Owner": "Vijahat Trunboo",
        "ENV": "PROD"
} 

subnet_ids = [
    "/subscriptions/3b33091e-1cdc-4ea3-a1a9-112226376c1b/resourceGroups/rg-cargoescustoms-infra-dev/providers/Microsoft.Network/virtualNetworks/vnet-cargoescustoms-dev/subnets/snet-bastion-cargoes-customs",
            "/subscriptions/3b33091e-1cdc-4ea3-a1a9-112226376c1b/resourceGroups/rg-cargoescustoms-infra-prod/providers/Microsoft.Network/virtualNetworks/vnet-cargoescustoms-prod/subnets/snet-FormRecognizer-prd",
            "/subscriptions/3b33091e-1cdc-4ea3-a1a9-112226376c1b/resourceGroups/rg-cargoescustoms-infra-prod/providers/Microsoft.Network/virtualNetworks/vnet-cargoescustoms-prod/subnets/snet-Pl-cargoes-customs-prd",
            "/subscriptions/3b33091e-1cdc-4ea3-a1a9-112226376c1b/resourceGroups/rg-cargoescustoms-infra-prod/providers/Microsoft.Network/virtualNetworks/vnet-cargoescustoms-prod/subnets/snet-aksnode-cargoes-customs-prod",
            "/subscriptions/3b33091e-1cdc-4ea3-a1a9-112226376c1b/resourceGroups/rg-cargoescustoms-infra-prod/providers/Microsoft.Network/virtualNetworks/vnet-cargoescustoms-prod/subnets/snet-akspod-cargoes-customs-prod",
            "/subscriptions/3b33091e-1cdc-4ea3-a1a9-112226376c1b/resourceGroups/rg-cargoescustoms-infra-prod/providers/Microsoft.Network/virtualNetworks/vnet-cargoescustoms-prod/subnets/snet-psql-cargoes-customs-prd",
            "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wvd-dtw/providers/Microsoft.Network/virtualNetworks/vnet-wvd-dtw/subnets/snet-wvd-dtw"

]