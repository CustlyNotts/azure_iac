
subscription_id     = <subscription_id>
name                          = "storageaccountrgcarbd36"
resource_group_name           = "rg-cargoescanada-prod"
account_tier                  = "Standard"
account_kind                  = "Storage"
#large_file_share_enabled      = true
account_replication_type      = "LRS"
infrastructure_encryption_enabled = false
allow_nested_items_to_be_public   = true
public_network_access_enabled = false

min_tls_version               = "TLS1_2"
#cross_tenant_replication_enabled = "true"
allowed_ips = []
bypass      = ["AzureServices"]


subnet_ids = [
 
              

    ]  


tags                          = {
        "ENV": "PROD",
        "Application Name": "Cargoes Canada ",
        "Application Owner": "Daniel Stuart",
        "RITM": "NA"

}