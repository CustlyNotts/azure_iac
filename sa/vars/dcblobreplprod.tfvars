subscription_id     = <subscription_id>
name                              = "dcblobreplprod"
resource_group_name               = "datachain-prod-uaenorth"
account_tier                      = "Standard"
account_kind                      = "StorageV2"
account_replication_type          = "RAGRS"
soft_delete_enabled               = true
delete_retention_days             = 7
container_delete_retention_days   = 7
cross_tenant_replication_enabled  = true
allow_nested_items_to_be_public   = false
all_network_access_enabled        = false
infrastructure_encryption_enabled = false
custom_domain_enabled             = false
versioning_enabled                = false
bypass                            = ["AzureServices"]
public_network_access_enabled     = true
subnet_ids = [
  "/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rg-metallicgw_uaecentral-prod/providers/Microsoft.Network/virtualNetworks/vnet-metallicgw_uaecentral-prod/subnets/snet-metallicgw_uaecentral-prod"
]
tags = {
  "Application" : "datachain",
  "Application Name" : "Datachain",
  "Application Owner" : "Jay Li/Jayakrishna Alwar",
  "ENV" : "PROD",
  "nvironment" : "production"
}