subscription_id     = <subscription_id>
name                          = "strgcrsamrprod"
resource_group_name           = "rg-crs-amr-prod"
account_tier                  = "Standard"
account_kind                  = "StorageV2"
account_replication_type      = "LRS"
public_network_access_enabled = true
subnet_ids = [
  "/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/rg-crs-amr-prod/providers/Microsoft.Network/virtualNetworks/vnet-crs-amr-prod/subnets/snet-crs-amr-prod"
]
allowed_ips = []
bypass      = ["AzureServices"]
tags        = {}