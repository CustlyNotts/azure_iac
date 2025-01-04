subscription_id     = <subscription_id>
name                          = "strgdpweduportal"
resource_group_name           = "rg-dpweduportal-prod"
account_tier                  = "Standard"
account_kind                  = "StorageV2"
account_replication_type      = "LRS"
public_network_access_enabled = false
#subnet_ids = [
#   "/subscriptions/ad86c834-0651-4e48-8c88-2cf8289e2fe7/resourceGroups/rg-mea-infra-nonprod/providers/Microsoft.Network/virtualNetworks/vnet-mea-nonprod/subnets/snet-common-flex",
#"/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rg-wvd-global/providers/Microsoft.Network/virtualNetworks/VnetWVDall/subnets/wvd-sub1",
#"/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rg-dpweduportal-prod/providers/Microsoft.Network/virtualNetworks/vnet-dpweduportal-prod/subnets/snet-dpweduportal"
#]
allowed_ips = []
bypass      = ["AzureServices"]
tags = {
  "Application Name"  = "EducationPortal",
  "Application Owner" = "Victoria.Bowden@dpworld.com",
  "ENV"               = "PROD"
}