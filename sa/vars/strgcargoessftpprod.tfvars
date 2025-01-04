subscription_id     = <subscription_id>
name                     = "strgcargoessftpprod"
resource_group_name      = "rg-cargoeslogistics-prod"
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
allowed_ips                       = ["212.23.156.236"]
subnet_ids                        = ["/subscriptions/82e3e8d8-3e5b-42e4-87cf-be360dbacb3a/resourceGroups/rg-cargoes-boomi-prod/providers/Microsoft.Network/virtualNetworks/vnet-cargoes-boomi-prod/subnets/snet-cargoes-boomi-prod"]
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
  "Application Name" : "Cargoes Logistics",
  "Application Owner" : "Vikram Bhogyata",
  "ENV" : "PROD",
  "RITM" : "RITM0082548"
}