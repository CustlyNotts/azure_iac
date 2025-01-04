subscription_id     = <subscription_id>
name                            = "strgdpconnectprod"
resource_group_name             = "rg-ecommerce-prod"
account_tier                    = "Standard"
account_kind                    = "StorageV2"
account_replication_type        = "RAGRS"
soft_delete_enabled             = true
delete_retention_days           = 7
container_delete_retention_days = 7
public_network_access_enabled   = false
all_network_access_enabled      = false
#subnet_ids = [
#   "/subscriptions/ad86c834-0651-4e48-8c88-2cf8289e2fe7/resourceGroups/rg-mea-infra-nonprod/providers/Microsoft.Network/virtualNetworks/vnet-mea-nonprod/subnets/snet-common-flex",
#"/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rg-wvd-global/providers/Microsoft.Network/virtualNetworks/VnetWVDall/subnets/wvd-sub1",

#]
allowed_ips = []
bypass      = ["AzureServices"]
tags = {
  "Application Name" : "Ecommerce",
  "Application Owner" : "Arup Sarkar",
  "ENV" : "PROD"
}