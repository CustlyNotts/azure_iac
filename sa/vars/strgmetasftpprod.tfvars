subscription_id     = <subscription_id>
name                     = "strgmetasftpprod"
resource_group_name      = "rg-ecommerce-prod"
account_tier             = "Standard"
account_kind             = "StorageV2"
account_replication_type = "RAGRS"
soft_delete_enabled      = true
delete_retention_days    = 7
sftp_enabled             = true
is_hns_enabled           = true
//all_network_access_enabled   = false
public_network_access_enabled     = true
infrastructure_encryption_enabled = false
bypass                            = ["AzureServices"]
allowed_ips = [
  "185.251.244.20",
  "54.74.211.204",
  "91.75.179.98",
  "99.80.224.71",
  "99.81.216.127",
]
queue_properties = [
  {
    logging = {
      delete                = "false"
      read                  = "false"
      write                 = "false"
      version               = "1.0"
      retention_policy_days = null
    }
    minute_metrics = {
      enabled               = false
      version               = "1.0"
      include_apis          = false
      retention_policy_days = null
    }
    hour_metrics = {
      enabled               = true
      version               = "1.0"
      include_apis          = true
      retention_policy_days = 7
    }
  }
]


tags = {
  "Application Name" : "Ecommerce (Dubuy & DM)",
  "Application Owner" : "Arup Sarkar",
  "ENV" : "PROD"
}