
subscription_id     = <subscription_id>
name                          = "stb2bcrrdev001"
resource_group_name           = "rg-crrdev-001"
account_tier                  = "Standard"
account_kind                  = "StorageV2"
#large_file_share_enabled      = true
account_replication_type      = "LRS"
infrastructure_encryption_enabled = false
allow_nested_items_to_be_public   = true
public_network_access_enabled = true
min_tls_version               = "TLS1_0"
#cross_tenant_replication_enabled = "false"
allowed_ips = []
bypass      = ["AzureServices"]
all_network_access_enabled = false

static_website = {
  error_404_document = "index.html"
  index_document     = "index.html"
      
}
subnet_ids = [
    "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-account-dev/providers/Microsoft.Network/virtualNetworks/vnet-account-dev/subnets/snet-SecAudit",
    "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-account-dev/providers/Microsoft.Network/virtualNetworks/vnet-account-dev/subnets/snet-account-dev",
    "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-account-dev/providers/Microsoft.Network/virtualNetworks/vnet-account-dev/subnets/snet-internallb",
    "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wvd-dtw/providers/Microsoft.Network/virtualNetworks/vnet-wvd-dtw/subnets/snet-wvd-dtw"
 ]

tags      = {"Application Name": "CRRDEV 001", "Application Owner": "hussain.hashimi@dpworld.com", "ENV": "DEV"} 
