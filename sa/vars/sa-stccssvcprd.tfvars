
subscription_id     = <subscription_id>
name                          = "stccssvcprd"
resource_group_name           = "rg-cargoescustoms-svc-prod"
account_tier                  = "Standard"
account_kind                  = "StorageV2"
#large_file_share_enabled      = true
account_replication_type      = "RAGRS"
infrastructure_encryption_enabled = false
allow_nested_items_to_be_public   = true
public_network_access_enabled = true
min_tls_version               = "TLS1_2"
cross_tenant_replication_enabled = "true"
#allowed_ips = []
soft_delete_enabled = true
delete_retention_days = 7
versioning_enabled = true
bypass      = ["AzureServices"]
all_network_access_enabled = false
allowed_ips = []
tags      = {

        "Application Name": "Cargoes Customs",
        "Application Owner": "Vijahat Trunboo",
        "ENV": "PROD"
} 

subnet_ids = [
 "/subscriptions/3b33091e-1cdc-4ea3-a1a9-112226376c1b/resourceGroups/rg-cargoescustoms-svc-infra-prod/providers/Microsoft.Network/virtualNetworks/vnet-cargoescustoms-svc-prod/subnets/snet-aksnode-cargoescustoms-svc-prd",
              "/subscriptions/3b33091e-1cdc-4ea3-a1a9-112226376c1b/resourceGroups/rg-cargoescustoms-svc-infra-prod/providers/Microsoft.Network/virtualNetworks/vnet-cargoescustoms-svc-prod/subnets/snet-akspod-cargoescustoms-svc-prd",
              "/subscriptions/3b33091e-1cdc-4ea3-a1a9-112226376c1b/resourceGroups/rg-cargoescustoms-svc-infra-prod/providers/Microsoft.Network/virtualNetworks/vnet-cargoescustoms-svc-prod/subnets/snet-bastion-cargoescustoms-svc-prd",
              "/subscriptions/3b33091e-1cdc-4ea3-a1a9-112226376c1b/resourceGroups/rg-cargoescustoms-svc-infra-prod/providers/Microsoft.Network/virtualNetworks/vnet-cargoescustoms-svc-prod/subnets/snet-psql-cargoescustoms-svc-prd",
              "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wvd-dtw/providers/Microsoft.Network/virtualNetworks/vnet-wvd-dtw/subnets/snet-wvd-dtw"
]