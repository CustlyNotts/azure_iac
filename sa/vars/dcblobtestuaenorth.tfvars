subscription_id     = <subscription_id>
name                              = "dcblobtestuaenorth"
resource_group_name               = "datachain-test-uaenorth"
account_tier                      = "Standard"
account_kind                      = "BlobStorage"
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
allowed_ips                       = ["144.48.224.83"]
subnet_ids = [
  "/subscriptions/3ddf2459-a8f6-4f71-9fa4-9b3479dbf234/resourceGroups/cargoes-staging/providers/Microsoft.Network/virtualNetworks/cargoes-platform-cluster-staging-vnet/subnets/cargoes-platform-cluster-staging-subnet-1"
]
tags = {
  "Application Name" : "Datachain",
  "app-type" : "web",
  "application" : "datachain",
  "Application Owner" : "Jay Li/ Jayakrishna Alwar",
  "ENV" : "STAGING"
}