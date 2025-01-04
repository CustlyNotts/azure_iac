
subscription_id     = <subscription_id>
name                          = "stcargoescanadastglogs"
resource_group_name           = "rg-cargoescanadastg"
account_tier                  = "Premium"
account_kind                  = "FileStorage"
#large_file_share_enabled      = true
account_replication_type      = "LRS"
infrastructure_encryption_enabled = false
allow_nested_items_to_be_public   = true
public_network_access_enabled = true

min_tls_version               = "TLS1_2"
#cross_tenant_replication_enabled = "true"
allowed_ips = []
bypass      = ["AzureServices"]


subnet_ids = [

               "/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rg-wvd-global/providers/Microsoft.Network/virtualNetworks/VnetWVDall/subnets/wvd-sub1",
              "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wvd-dtw/providers/Microsoft.Network/virtualNetworks/vnet-wvd-dtw/subnets/snet-wvd-dtw",
              "/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/rg-cargoescanadahub-build/providers/Microsoft.Network/virtualNetworks/vnet-cargoescanada-build/subnets/snet-mgmt",
              "/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/rg-cargoescanadastg/providers/Microsoft.Network/virtualNetworks/vnet-cargoescanadastg/subnets/snet-cargoescanadastg",
              "/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/rg-cargoescanadastg/providers/Microsoft.Network/virtualNetworks/vnet-cargoescanadastg/subnets/snet-cargoesprivateendpoint",
              "/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/rg-cargoescanadastg/providers/Microsoft.Network/virtualNetworks/vnet-cargoescanadastg/subnets/snet-cargoesreportstag",
              "/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/rg-cargoescanadastg/providers/Microsoft.Network/virtualNetworks/vnet-cargoescanadastg/subnets/snet-common-flex",
              "/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/rg-cargoescanadastg/providers/Microsoft.Network/virtualNetworks/vnet-cargoescanadastg/subnets/snet-internallb"

    ]  
tags                          = {
        "Application Owner": "Daniel Stuart",
        "RITM": "RITM0028992 ",
        "Application Name": "Cargoes Canada",
        "ENV": "DEV"
}
