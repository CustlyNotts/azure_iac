subscription_id     = <subscription_id>
name                     = "strgmetasftpnonprod"
resource_group_name      = "rg-ecommerce-dev"
account_tier             = "Standard"
account_kind             = "StorageV2"
account_replication_type = "LRS"
soft_delete_enabled      = true
delete_retention_days    = 7
sftp_enabled             = true
is_hns_enabled           = true
#all_network_access_enabled   = false
#public_network_access_enabled   = false
infrastructure_encryption_enabled = false
bypass                            = ["AzureServices"]

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
  "ENV" : "DEV"
}