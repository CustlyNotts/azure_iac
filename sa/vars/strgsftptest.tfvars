subscription_id     = <subscription_id>
name                     = "strgsftptest"
resource_group_name      = "Rg-sftp-dev"
location                 = "uaenorth"
account_tier             = "Standard"
account_kind             = "StorageV2"
account_replication_type = "LRS"
is_hns_enabled           = true
soft_delete_enabled      = true
#large_file_share_enabled  = true
sftp_enabled                      = true
cross_tenant_replication_enabled  = false
min_tls_version                   = "TLS1_2"
allow_nested_items_to_be_public   = true
enable_https_traffic_only         = true
public_network_access_enabled     = true
infrastructure_encryption_enabled = false
subnet_ids = [
]

allowed_ips = [
  "20.46.152.46",
  "217.165.244.161",
  "86.98.59.180",
]

all_network_access_enabled = true

bypass = ["AzureServices"]


tags = {

  "Application Name"  = "Mawani Sftp"
  "Application Owner" = "abdulla.kazim"
  "ENV"               = "DEV"

}
