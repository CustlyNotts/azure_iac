subscription_id     = <subscription_id>
name                     = "stcargoescanadaprodlogs"
resource_group_name      = "rg-cargoescanada-prod"
account_tier             = "Premium"
account_kind             = "FileStorage"
account_replication_type = "LRS"
soft_delete_enabled      = false
#delete_retention_days           = 7
#container_delete_retention_days = 7
cross_tenant_replication_enabled  = false
min_tls_version                   = "TLS1_2"
allow_nested_items_to_be_public   = true
public_network_access_enabled     = true
infrastructure_encryption_enabled = false
#cross_tenant_replication_enabled  = false
subnet_ids = [

             "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wvd-dtw/providers/Microsoft.Network/virtualNetworks/vnet-wvd-dtw/subnets/snet-wvd-dtw",
              "/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/rg-cargoescanada-prod/providers/Microsoft.Network/virtualNetworks/vnet-cargoscanada-prod/subnets/snet-cargoesreport-privteendpoint",
              "/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/rg-cargoescanada-prod/providers/Microsoft.Network/virtualNetworks/vnet-cargoscanada-prod/subnets/snet-cargoesreportprod",
              "/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/rg-cargoescanada-prod/providers/Microsoft.Network/virtualNetworks/vnet-cargoscanada-prod/subnets/snet-cargoestest",
              "/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/rg-cargoescanada-prod/providers/Microsoft.Network/virtualNetworks/vnet-cargoscanada-prod/subnets/snet-cargoscanada-prod",
              "/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/rg-cargoescanada-prod/providers/Microsoft.Network/virtualNetworks/vnet-cargoscanada-prod/subnets/snet-common-flex",
              "/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/rg-cargoescanada-prod/providers/Microsoft.Network/virtualNetworks/vnet-cargoscanada-prod/subnets/snet-internallb",
               "/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/rg-cargoescanadahub-build/providers/Microsoft.Network/virtualNetworks/vnet-cargoescanada-build/subnets/snet-mgmt"

]
all_network_access_enabled = false
#network_rules              = "Deny"


allowed_ips = []
bypass      = ["AzureServices"]

tags = {
        "ENV": "PROD",
        "Application Owner": "Daniel Stuart",
        "RITM": "RITM0028992",
        "Application Name": "Cargoes Canada "
}
