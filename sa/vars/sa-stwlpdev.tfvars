
subscription_id     = <subscription_id>
name                          = "stwlpdev"
resource_group_name           = "rg-wlp-dev"
account_tier                  = "Standard"
account_kind                  = "StorageV2"
infrastructure_encryption_enabled = false
allow_nested_items_to_be_public   = false
enable_https_traffic_only         = true
#large_file_share_enabled      = true
account_replication_type      = "LRS"
public_network_access_enabled = true
min_tls_version               = "TLS1_0"
#cross_tenant_replication_enabled = "false"
allowed_ips = []
bypass      = ["AzureServices"]
all_network_access_enabled = false
subnet_ids = [
     "/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rg-wvd-global/providers/Microsoft.Network/virtualNetworks/VnetWVDall/subnets/wvd-sub1",
     "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-dev/providers/Microsoft.Network/virtualNetworks/vnet-wlp-dev-uaenorth/subnets/snet-wlp-dev-aks-uaenorth",
      "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-dev/providers/Microsoft.Network/virtualNetworks/vnet-wlp-dev-uaenorth/subnets/snet-wlp-dev-bastion-uaenorth",
      "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-dev/providers/Microsoft.Network/virtualNetworks/vnet-wlp-dev-uaenorth/subnets/snet-wlp-dev-lb-uaenorth",
        "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-dev/providers/Microsoft.Network/virtualNetworks/vnet-wlp-dev-uaenorth/subnets/snet-wlp-dev-native-uaenorth",
      "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wvd-dtw/providers/Microsoft.Network/virtualNetworks/vnet-wvd-dtw/subnets/snet-wvd-dtw"
            ]
tags                          = {"Application Name": "WLP Dev", "Application Owner": "hussain.hashimi@dpworld.com", "ENV": "DEV"} 
