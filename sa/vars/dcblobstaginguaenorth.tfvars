subscription_id     = <subscription_id>
name                              = "dcblobstaginguaenorth"
resource_group_name               = "datachain-staging-uaenorth"
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
allowed_ips                       = ["182.79.27.150"]
subnet_ids = [
  "/subscriptions/3ddf2459-a8f6-4f71-9fa4-9b3479dbf234/resourceGroups/cargoes-staging/providers/Microsoft.Network/virtualNetworks/cargoes-platform-cluster-staging-vnet/subnets/cargoes-platform-cluster-staging-subnet-1",
  "/subscriptions/dc2a271c-2f36-4ca3-b3b6-79ada4cd5d6b/resourceGroups/rg-BlockchainUAEstaging/providers/Microsoft.Network/virtualNetworks/vnet-BlockchainUAE-staging/subnets/snet-blockchain"
]
tags = {
  "Application Name" : "Datachain",
  "Application Owner" : "Jay Li/ Jayakrishna Alwar",
  "ENV" : "TESTING"
}