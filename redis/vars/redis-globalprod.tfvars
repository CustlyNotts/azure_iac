subscription_id     = <subscription_id>
name                = "redis-globalprod"
resource_group_name = "rg-global-prod"
capacity            = 1
family              = "C"
sku                 = "Standard"
enable_non_ssl_port = false
use_existing_pe     = false
use_existing_dns    = false
subnet_id           = ["/subscriptions/7076703f-57ca-4c30-9d69-94c008f7a470/resourceGroups/rg-global-infra-prod/providers/Microsoft.Network/virtualNetworks/vnet-global-prod/subnets/snet-common"]
virtual_network_id  = ["/subscriptions/7076703f-57ca-4c30-9d69-94c008f7a470/resourceGroups/rg-global-infra-prod/providers/Microsoft.Network/virtualNetworks/vnet-global-prod"]