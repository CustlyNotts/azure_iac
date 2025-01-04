subscription_id     = <subscription_id>
name                     = "stcargoesappprod"
resource_group_name      = "Rg-Cargoesapp-Prod"
account_tier             = "Standard"
account_kind             = "StorageV2"
account_replication_type = "RAGRS"
soft_delete_enabled      = true
large_file_share_enabled = false
delete_retention_days    = 365
#container_delete_retention_days = 7
#cross_tenant_replication_enabled  = false
min_tls_version                   = "TLS1_2"
allow_nested_items_to_be_public   = true
public_network_access_enabled     = true
infrastructure_encryption_enabled = false
#cross_tenant_replication_enabled  = false
subnet_ids = [
  "/subscriptions/0f1aad42-836d-40a7-bc3d-13587ecdb839/resourceGroups/rg-metallicgw_uksouth-prod/providers/Microsoft.Network/virtualNetworks/vnet-metallicgw_uksouth-prod/subnets/snet-metallicgw_uksouth-prod",
  "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wvd-dtw/providers/Microsoft.Network/virtualNetworks/vnet-wvd-dtw/subnets/snet-wvd-dtw",
  "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/cnsnw/providers/Microsoft.Network/virtualNetworks/CNSNetwork/subnets/snet-cnsprod",
  "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/rg-cnsdr/providers/Microsoft.Network/virtualNetworks/vnet-cnsdr/subnets/GatewaySubnet",
  "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/rg-cnsdr/providers/Microsoft.Network/virtualNetworks/vnet-cnsdr/subnets/snet-cnsdr",
  "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/rg-cnsdr/providers/Microsoft.Network/virtualNetworks/vnet-cnsdr/subnets/snet-cnsdr-ep",
  "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/rg-cnsdr/providers/Microsoft.Network/virtualNetworks/vnet-cnsdr/subnets/snet-cnsdr-ilb",
  "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/rg-cnsdr/providers/Microsoft.Network/virtualNetworks/vnet-cnsdr/subnets/snet-cnsdragic",
  "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/rg-cnsdr/providers/Microsoft.Network/virtualNetworks/vnet-cnsdr/subnets/snet-cnspreprod-dr",
  "/subscriptions/5c7ffb4d-2288-4bc0-a920-78bab3f2db58/resourceGroups/rg-cnsdr/providers/Microsoft.Network/virtualNetworks/vnet-cnsdr/subnets/snet-dr-support"

]


all_network_access_enabled = false
network_rules              = "Deny"


allowed_ips = []
bypass      = ["AzureServices"]

tags = {
  "Application Name" : "Mawani CNS",
  "Application Owner" : "Daniel Stuart",
  "ENV" : "PROD"
}
