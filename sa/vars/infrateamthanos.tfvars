subscription_id     = <subscription_id>
name                          = "infrateamthanos"
resource_group_name           = "rg-infrateam"
account_tier                  = "Standard"
account_kind                  = "BlobStorage"
account_replication_type      = "LRS"
public_network_access_enabled = true
subnet_ids = [
  "/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rg-infrateam/providers/Microsoft.Network/virtualNetworks/vnet-infrateam/subnets/snet-aks-infra"
]
allowed_ips = []
bypass      = ["AzureServices"]
tags        = {}