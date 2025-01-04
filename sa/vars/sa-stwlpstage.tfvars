
subscription_id     = <subscription_id>
name                          = "stwlpstage"
resource_group_name           = "rg-wlp-stage"
account_tier                  = "Standard"
account_kind                  = "StorageV2"
infrastructure_encryption_enabled = false 
#large_file_share_enabled      = true
account_replication_type      = "LRS"
public_network_access_enabled = true
min_tls_version               = "TLS1_0"
#cross_tenant_replication_enabled = "false"
allowed_ips = []
bypass      = ["AzureServices"]
all_network_access_enabled = false
allow_nested_items_to_be_public   = false
subnet_ids = [
    "/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rg-wvd-global/providers/Microsoft.Network/virtualNetworks/VnetWVDall/subnets/wvd-sub1",
     "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-stage/providers/Microsoft.Network/virtualNetworks/vnet-wlp-stage-uaenorth/subnets/snet-wlp-stage-aks-uaenorth",
       "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-stage/providers/Microsoft.Network/virtualNetworks/vnet-wlp-stage-uaenorth/subnets/snet-wlp-stage-bastion-uaenorth",
         "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-stage/providers/Microsoft.Network/virtualNetworks/vnet-wlp-stage-uaenorth/subnets/snet-wlp-stage-lb-uaenorth",
         "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-stage/providers/Microsoft.Network/virtualNetworks/vnet-wlp-stage-uaenorth/subnets/snet-wlp-stage-native-uaenorth",
       "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wvd-dtw/providers/Microsoft.Network/virtualNetworks/vnet-wvd-dtw/subnets/snet-wvd-dtw"
 ]
tags                          = {"Application Name": "WLP stage", "Application Owner": "hussain.hashimi@dpworld.com", "ENV": "STAGING"} 
