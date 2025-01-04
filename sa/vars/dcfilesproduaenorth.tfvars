subscription_id     = <subscription_id>
name                     = "dcfilesproduaenorth"
resource_group_name      = "datachain-prod-uaenorth"
account_tier             = "Premium"
account_kind             = "FileStorage"
account_replication_type = "LRS"
soft_delete_enabled      = true
delete_retention_days    = 14
#container_delete_retention_days = 7
cross_tenant_replication_enabled  = true
allow_nested_items_to_be_public   = false
all_network_access_enabled        = false
infrastructure_encryption_enabled = false
custom_domain_enabled             = false
#versioning_enabled = false
bypass                        = ["AzureServices"]
public_network_access_enabled = true
subnet_ids = [
  "/subscriptions/0f1aad42-836d-40a7-bc3d-13587ecdb839/resourceGroups/rg-metallicgw_uaenorth-prod/providers/Microsoft.Network/virtualNetworks/vnet-metallicgw_uaenorth-prod/subnets/snet-metallicgw_uaenorth-prod",
  "/subscriptions/0f1aad42-836d-40a7-bc3d-13587ecdb839/resourceGroups/rg-metallicgw_uaenorth-prod/providers/Microsoft.Network/virtualNetworks/vnet-metallicgw_uaenorth-prod/subnets/snet-prvtlnk",
  "/subscriptions/368014ab-c35d-4615-a165-842d87aec6f5/resourceGroups/rg-cargoesprod-SharedInfra-prod/providers/Microsoft.Network/virtualNetworks/vnet-cargoessharedapps-prod/subnets/snetakspod",
  "/subscriptions/368014ab-c35d-4615-a165-842d87aec6f5/resourceGroups/rg-cargoesprod-SharedInfra-prod/providers/Microsoft.Network/virtualNetworks/vnet-cargoessharedapps-prod/subnets/snetnonaks"
]
tags = {
  "app-type" : "web",
  "application" : "Datachain",
  "Application Name" : "datachain",
  "Application Owner" : "Jay Li/Jayakrishna Alwar",
  "ENV" : "PROD",
  "PrivitizationExemption" : "True"
}