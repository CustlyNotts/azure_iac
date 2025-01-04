subscription_id     = <subscription_id>
name                     = "stdellboomi"
resource_group_name      = "rg-mawani-boomi-prod"
account_tier             = "Standard"
account_kind             = "StorageV2"
account_replication_type = "RAGRS"
soft_delete_enabled      = false
#delete_retention_days           = 7
#container_delete_retention_days = 7
cross_tenant_replication_enabled  = true
min_tls_version                   = "TLS1_2"
allow_nested_items_to_be_public   = true
public_network_access_enabled     = true
infrastructure_encryption_enabled = false
#cross_tenant_replication_enabled  = false
subnet_ids = [
  "/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rg-wvd-global/providers/Microsoft.Network/virtualNetworks/VnetWVDall/subnets/wvd-sub1",
  "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wvd-dtw/providers/Microsoft.Network/virtualNetworks/vnet-wvd-dtw/subnets/snet-wvd-dtw",
  "/subscriptions/7c7a17a5-36b8-40d9-a4b4-6f303637dc47/resourceGroups/rg-mawani-boomi-nonprod/providers/Microsoft.Network/virtualNetworks/vnet-mawani-boomi-nonprod/subnets/snet-mawani-boomi-nonprod"
   "/subscriptions/7c7a17a5-36b8-40d9-a4b4-6f303637dc47/resourceGroups/rg-mawani-boomi-prod/providers/Microsoft.Network/virtualNetworks/vnet-mawani-boomi-prod/subnets/snet-mawani-boomi-prod"
]
all_network_access_enabled = true
#network_rules    = "allow"


allowed_ips = []
bypass      = ["AzureServices"]

tags = {
  "Application Name" : "Boomi",
  "Application Owner" : "Daniel",
  "ENV" : "PROD"
}