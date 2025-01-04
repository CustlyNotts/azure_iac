subscription_id     = <subscription_id>
name                          = "stglobaluatlogs"
resource_group_name           = "rg-global-uat"
account_tier                  = "Premium"
account_kind                  = "FileStorage"
large_file_share_enabled      = true
account_replication_type      = "LRS"
public_network_access_enabled = true
subnet_ids = [
  #   "/subscriptions/ad86c834-0651-4e48-8c88-2cf8289e2fe7/resourceGroups/rg-mea-infra-nonprod/providers/Microsoft.Network/virtualNetworks/vnet-mea-nonprod/subnets/snet-common-flex",
  "/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rg-wvd-global/providers/Microsoft.Network/virtualNetworks/VnetWVDall/subnets/wvd-sub1",
  "/subscriptions/7076703f-57ca-4c30-9d69-94c008f7a470/resourceGroups/rg-global-infra-nonprod/providers/Microsoft.Network/virtualNetworks/vnet-global-nonprod/subnets/snet-common",
  "/subscriptions/cf524703-9d5e-4aa2-bbe9-975fe083f66a/resourceGroups/rg-cpharmony-uae-prod/providers/Microsoft.Network/virtualNetworks/vnet-cpharmony-uae-prod/subnets/snet-akscpharmonynode-prod",
  "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wvd-dtw/providers/Microsoft.Network/virtualNetworks/vnet-wvd-dtw/subnets/snet-wvd-dtw"
]
allowed_ips = []
bypass      = ["AzureServices"]
tags = {
  "Application Name" : "CCS",
  "Application Owner" : "Daniel Stuart/Linu Joseph/Pradeesh Raju",
  "ENV" : "UAT"
}