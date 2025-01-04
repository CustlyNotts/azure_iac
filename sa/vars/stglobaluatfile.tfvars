subscription_id     = <subscription_id>
name                     = "stglobaluatfile"
resource_group_name      = "rg-global-uat"
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
subnet_ids = [

  "/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rg-wvd-global/providers/Microsoft.Network/virtualNetworks/VnetWVDall/subnets/wvd-sub1",
  "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wvd-dtw/providers/Microsoft.Network/virtualNetworks/vnet-wvd-dtw/subnets/snet-wvd-dtw",
  "/subscriptions/7076703f-57ca-4c30-9d69-94c008f7a470/resourceGroups/rg-global-infra-nonprod/providers/Microsoft.Network/virtualNetworks/vnet-global-nonprod/subnets/snet-common",
  "/subscriptions/cf524703-9d5e-4aa2-bbe9-975fe083f66a/resourceGroups/rg-cpharmony-uae-prod/providers/Microsoft.Network/virtualNetworks/vnet-cpharmony-uae-prod/subnets/snet-akscpharmonynode-prod",

]
allowed_ips = []
bypass      = ["AzureServices"]
tags = {
  "Application Name" : "CCS",
  "Application Owner" : "Daniel Stuart/Linu Joseph/Pradeesh Raju",
  "ENV" : "UAT"
  "PublicAccessAllowed" = "RITM0075977"
  "PublicAccessInfo"    = "Used for hosting Static content - CDN"
}