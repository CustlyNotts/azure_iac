
subscription_id     = <subscription_id>
name                          = "stwlpprod"
resource_group_name           = "rg-wlp-prod"
account_tier                  = "Standard"
account_kind                  = "StorageV2"
infrastructure_encryption_enabled = false
allow_nested_items_to_be_public   = false
enable_https_traffic_only         = true
#large_file_share_enabled      = true
account_replication_type      = "GRS"
public_network_access_enabled = true
min_tls_version               = "TLS1_0"
#cross_tenant_replication_enabled = "false"
allowed_ips = []
bypass      = ["AzureServices"]
all_network_access_enabled = false
subnet_ids = [
    "/subscriptions/0f1aad42-836d-40a7-bc3d-13587ecdb839/resourceGroups/rg-metallicgw_uaenorth-prod/providers/Microsoft.Network/virtualNetworks/vnet-metallicgw_uaenorth-prod/subnets/snet-metallicgw_uaenorth-prod",
    "/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rg-wvd-global/providers/Microsoft.Network/virtualNetworks/VnetWVDall/subnets/wvd-sub1",
     "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-prod/providers/Microsoft.Network/virtualNetworks/vnet-wlp-prod-uaenorth/subnets/snet-wlp-prod-aks-uaenorth",
    "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-prod/providers/Microsoft.Network/virtualNetworks/vnet-wlp-prod-uaenorth/subnets/snet-wlp-prod-bastion-uaenorth",
    "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-prod/providers/Microsoft.Network/virtualNetworks/vnet-wlp-prod-uaenorth/subnets/snet-wlp-prod-lb-uaenorth",
     "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-prod/providers/Microsoft.Network/virtualNetworks/vnet-wlp-prod-uaenorth/subnets/snet-wlp-prod-native-uaenorth",
      "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wvd-dtw/providers/Microsoft.Network/virtualNetworks/vnet-wvd-dtw/subnets/snet-wvd-dtw"
            ]
tags                          = {"Application Name": "WLP prod", "Application Owner": "hussain.hashimi@dpworld.com", "ENV": "PROD"} 
