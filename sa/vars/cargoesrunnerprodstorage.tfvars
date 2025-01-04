subscription_id     = <subscription_id>
name                            = "cargoesrunnerprodstorage"
resource_group_name             = "rg_cargoesRunner_prod"
account_tier                    = "Standard"
account_kind                    = "StorageV1"
account_replication_type        = "LRS"
soft_delete_enabled             = true
delete_retention_days           = 7
container_delete_retention_days = 7
public_network_access_enabled   = true
subnet_ids = [
  #   "/subscriptions/ad86c834-0651-4e48-8c88-2cf8289e2fe7/resourceGroups/rg-mea-infra-nonprod/providers/Microsoft.Network/virtualNetworks/vnet-mea-nonprod/subnets/snet-common-flex",
   #"/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rg-wvd-global/providers/Microsoft.Network/virtualNetworks/VnetWVDall/subnets/wvd-sub1",
   #"/subscriptions/cf524703-9d5e-4aa2-bbe9-975fe083f66a/resourceGroups/rg-cpharmony-uae-prod/providers/Microsoft.Network/virtualNetworks/vnet-cpharmony-uae-prod/subnets/snet-akscpharmonynode-prod",
   #"/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wvd-dtw/providers/Microsoft.Network/virtualNetworks/vnet-wvd-dtw/subnets/snet-wvd-dtw"
]
allowed_ips = []
bypass      = ["AzureServices"]
tags = {
  "Application Name" : "Cargoes Runner",
  "Application Owner" : "Vishank Srivatsava",
  "ENV" : "PROD"
}