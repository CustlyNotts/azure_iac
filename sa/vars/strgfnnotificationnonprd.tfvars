subscription_id     = <subscription_id>
name                              = "strgfnnotificationnonprd"
resource_group_name               = "notification-service-dev-uaenorth"
account_tier                      = "Standard"
account_kind                      = "StorageV2"
account_replication_type          = "LRS"
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
  "/subscriptions/3ddf2459-a8f6-4f71-9fa4-9b3479dbf234/resourceGroups/rg-cargoesshared-infra/providers/Microsoft.Network/virtualNetworks/vnet-notification-nonprod/subnets/snet-fn-notification-nonprod"
]
tags = {
  "Application Name" : "Notification Service",
  "Application Owner" : "Jay Li / Jayakrishna Alwar",
  "ENV" : "DEV",
}