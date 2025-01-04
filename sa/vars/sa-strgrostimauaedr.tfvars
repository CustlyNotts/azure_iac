subscription_id     = <subscription_id>
name                          = "strgrostimauaedr"
location                      = "uksouth"
resource_group_name           = "Rg-Rostima-DR"
account_tier                  = "Standard"
#cross_tenant_replication_enabled = false
account_kind                  = "StorageV2"
#large_file_share_enabled      = true
account_replication_type      = "LRS"
public_network_access_enabled = true
allow_nested_items_to_be_public   = false
infrastructure_encryption_enabled = false
min_tls_version               = "TLS1_2"
all_network_access_enabled = true
#network_rules    = "Deny"
allowed_ips = []
bypass      = ["AzureServices"]
subnet_ids = [
"/subscriptions/1f5e2bb0-70cd-430f-9fde-ecd3b07a0769/resourceGroups/Rg-Rostima-DR/providers/Microsoft.Network/virtualNetworks/Vnet-Rostima-DR/subnets/Snet_Rostima_DR",
]
tags                          = {"Application Name": "Poems Application",
        "Application Owner": "Moinudeen AliAzad",
        "ENV": "PROD",
        "PublicAccessAllowed": "RITM0078631",
        "PublicAccessInfo": "This is used for prod blob replication dr purpose"
        } 
