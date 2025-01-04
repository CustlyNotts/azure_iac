
subscription_id     = <subscription_id>
name                          = "stccssvcuat"
resource_group_name           = "rg-cargoescustoms-svc-uat"
account_tier                  = "Standard"
account_kind                  = "StorageV2"
#large_file_share_enabled      = true
account_replication_type      = "LRS"
infrastructure_encryption_enabled = false
allow_nested_items_to_be_public   = true
public_network_access_enabled = false
min_tls_version               = "TLS1_2"
cross_tenant_replication_enabled = "true"
#allowed_ips = []
bypass      = ["AzureServices"]
all_network_access_enabled = false
allowed_ips = []
tags      = {
        "RITM": "RITM0052909",
        " ENV": "UAT",
        "Application Owner": "Vijahat Trunboo",
        "Application Name": "CCS SVC",
        "ENV": "UAT"
} 

subnet_ids = [

    "/subscriptions/3b33091e-1cdc-4ea3-a1a9-112226376c1b/resourceGroups/rg-cargoescustoms-svc-infra-prod/providers/Microsoft.Network/virtualNetworks/vnet-cargoescustoms-svc-prod/subnets/snet-bastion-cargoescustoms-svc-prd",
    "/subscriptions/3b33091e-1cdc-4ea3-a1a9-112226376c1b/resourceGroups/rg-cargoescustoms-svc-infra-prod/providers/Microsoft.Network/virtualNetworks/vnet-cargoescustoms-svc-prod/subnets/snet-plink-cargoescustoms-svc-prd",
    "/subscriptions/3b33091e-1cdc-4ea3-a1a9-112226376c1b/resourceGroups/rg-cargoescustoms-svc-infra-uat/providers/Microsoft.Network/virtualNetworks/vnet-cargoescustoms-svc-uat/subnets/snet-aks-cargoescustoms-svc-uat"
]