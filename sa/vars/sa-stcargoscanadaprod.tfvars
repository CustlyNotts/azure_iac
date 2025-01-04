
subscription_id     = <subscription_id>
name                          = "stcargoscanadaprod"
resource_group_name           = "rg-cargoescanada-prod"
account_tier                  = "Standard"
account_kind                  = "StorageV2"
#large_file_share_enabled      = true
account_replication_type      = "RAGRS"
infrastructure_encryption_enabled = false
allow_nested_items_to_be_public   = true
public_network_access_enabled = true

min_tls_version               = "TLS1_2"
cross_tenant_replication_enabled = "true"
allowed_ips = []
bypass      = ["AzureServices"]


subnet_ids = [

    "/subscriptions/0f1aad42-836d-40a7-bc3d-13587ecdb839/resourceGroups/rg-metallicgw_canadacentral-prod/providers/Microsoft.Network/virtualNetworks/vnet-metallicgw_canadacentral-prod/subnets/snet-metallicgw_canadacentral-prod",
    "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wvd-dtw/providers/Microsoft.Network/virtualNetworks/vnet-wvd-dtw/subnets/snet-wvd-dtw",
              "/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/rg-cargoescanada-prod/providers/Microsoft.Network/virtualNetworks/vnet-cargoscanada-prod/subnets/snet-cargoesreport-privteendpoint",
              "/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/rg-cargoescanada-prod/providers/Microsoft.Network/virtualNetworks/vnet-cargoscanada-prod/subnets/snet-cargoesreportprod",
              "/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/rg-cargoescanada-prod/providers/Microsoft.Network/virtualNetworks/vnet-cargoscanada-prod/subnets/snet-cargoestest",
              "/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/rg-cargoescanada-prod/providers/Microsoft.Network/virtualNetworks/vnet-cargoscanada-prod/subnets/snet-cargoscanada-prod",
              "/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/rg-cargoescanada-prod/providers/Microsoft.Network/virtualNetworks/vnet-cargoscanada-prod/subnets/snet-common-flex",
              "/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/rg-cargoescanada-prod/providers/Microsoft.Network/virtualNetworks/vnet-cargoscanada-prod/subnets/snet-internallb",
              "/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/rg-cargoescanadahub-build/providers/Microsoft.Network/virtualNetworks/vnet-cargoescanada-build/subnets/snet-mgmt"

            

    ]  


static_website = {
    error_404_document = "error.html"
    index_document     = "index.html"
}
tags                          = {
        "Application Name": "Cargoes Canada ",
        "Application Owner": "Daniel Stuart",
        "ENV": "PROD"
}
