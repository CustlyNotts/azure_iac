subscription_id     = <subscription_id>
name                          = "stb2baccountproduction"
resource_group_name           = "rg-accountsproduction"
account_tier                  = "Premium"
account_kind                  = "FileStorage"
large_file_share_enabled      = true
account_replication_type      = "LRS"
public_network_access_enabled = true

allowed_ips = []
bypass      = ["AzureServices"]
all_network_access_enabled = false
allow_nested_items_to_be_public   = false
subnet_ids = [
    "/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rg-wvd-global/providers/Microsoft.Network/virtualNetworks/VnetWVDall/subnets/wvd-sub1",
       "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wvd-dtw/providers/Microsoft.Network/virtualNetworks/vnet-wvd-dtw/subnets/snet-wvd-dtw"
 ]

tags = {
  "Application Name" : "Accounts",
  "Application Owner" : "Accounts",
  "ENV" : "PROD"
}