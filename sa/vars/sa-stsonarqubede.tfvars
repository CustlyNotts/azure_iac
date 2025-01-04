
subscription_id     = <subscription_id>
name                          = "stsonarqubede"
resource_group_name           = "rg-sonarqube-de"
account_tier                  = "Standard"
account_kind                  = "Storage"
infrastructure_encryption_enabled = false
allow_nested_items_to_be_public   = true
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
   "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-sonarqube-de/providers/Microsoft.Network/virtualNetworks/vnet-sonarqube-de/subnets/default"
 ]
tags                          = {"name": "sonarqubede", "Application Name": "SONARQUBE de", "Application Owner": "Daniel Stuart / pradeesh raju", "ENV": "DEV"} 
