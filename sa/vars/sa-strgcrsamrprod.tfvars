subscription_id     = <subscription_id>
name                          = "strgcrsamrprod"
resource_group_name           = "rg-crs-amr-prod"
location                      = "canadacentral"
account_tier                  = "Standard"
#cross_tenant_replication_enabled = true
account_kind                  = "StorageV2"
#large_file_share_enabled      = true
account_replication_type      = "LRS"
public_network_access_enabled = true
allow_nested_items_to_be_public   = true
infrastructure_encryption_enabled = false
min_tls_version               = "TLS1_2"
all_network_access_enabled = true
enable_https_traffic_only         = true
#network_rules    = "Deny"
static_website = {
          error_404_document = "error.html"
          index_document     = "error_502.html"
        }
allowed_ips = ["212.59.68.43"]
bypass      = ["AzureServices"]
subnet_ids = [
  "/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/rg-crs-amr-prod/providers/Microsoft.Network/virtualNetworks/vnet-crs-amr-prod/subnets/snet-crs-amr-sql-prod",
]
tags                          = {"Application Name": "CRS application Americas Region",
        "Application Owner": "Moinudeen AliAzad",
        "ENV": "PROD"
        } 
