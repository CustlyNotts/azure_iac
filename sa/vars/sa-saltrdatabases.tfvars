
subscription_id     = <subscription_id>
name                          = "saltrdatabases"
resource_group_name           = "RG-LTR-PROD"
account_tier                  = "Standard"
account_kind                  = "StorageV2"
infrastructure_encryption_enabled = false
allow_nested_items_to_be_public   = true
#large_file_share_enabled      = true
account_replication_type      = "LRS"
public_network_access_enabled = true
min_tls_version               = "TLS1_2"
#cross_tenant_replication_enabled  = false
allowed_ips = ["20.46.152.46","86.98.64.128"]
bypass      = ["AzureServices"]


subnet_ids = [
  "/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rg-selfhostedAgent/providers/Microsoft.Network/virtualNetworks/vnet-selfhostedagent/subnets/snet-selfhostedagent",
  "/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rg-wvd-global/providers/Microsoft.Network/virtualNetworks/VnetWVDall/subnets/wvd-sub1"
    ]
tags                          = {"Application Name": "LTR ", "Application Owner": "Shaloof", "ENV": "PROD"} 
