subscription_id     = <subscription_id>
name                          = "strgscoonprembackup"
resource_group_name           = "rg-sco-onprem-bkp-prod"
account_tier                  = "Standard"
account_kind                  = "StorageV2"
account_replication_type      = "LRS"
public_network_access_enabled = true
#subnet_ids = [
#   "/subscriptions/ad86c834-0651-4e48-8c88-2cf8289e2fe7/resourceGroups/rg-mea-infra-nonprod/providers/Microsoft.Network/virtualNetworks/vnet-mea-nonprod/subnets/snet-common-flex",
#"/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rg-wvd-global/providers/Microsoft.Network/virtualNetworks/VnetWVDall/subnets/wvd-sub1",
#"/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rg-dpweduportal-prod/providers/Microsoft.Network/virtualNetworks/vnet-dpweduportal-prod/subnets/snet-dpweduportal"
#]
allowed_ips = []
bypass      = ["AzureServices"]
tags = {
  "Application Owner" : "Sachin Sawant",
  "ENV" : "PROD",
  "Application Name" : "On Prem Veem Backup",
  "RITM" : "RITM0074333"
}
