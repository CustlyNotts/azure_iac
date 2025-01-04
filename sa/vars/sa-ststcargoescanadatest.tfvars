
subscription_id     = <subscription_id>
name                          = "ststcargoescanadatest"
resource_group_name           = "rg-cargoscanada-test"
account_tier                  = "Standard"
account_kind                  = "StorageV2"
#large_file_share_enabled      = true
account_replication_type      = "LRS"
infrastructure_encryption_enabled = false
allow_nested_items_to_be_public   = true
public_network_access_enabled = true

min_tls_version               = "TLS1_0"
#cross_tenant_replication_enabled = "true"
allowed_ips = []
bypass      = ["AzureServices"]


subnet_ids = [
 
            "/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rg-wvd-global/providers/Microsoft.Network/virtualNetworks/VnetWVDall/subnets/wvd-sub1",
              "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wvd-dtw/providers/Microsoft.Network/virtualNetworks/vnet-wvd-dtw/subnets/snet-wvd-dtw",
              "/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/rg-cargoescanadahub-build/providers/Microsoft.Network/virtualNetworks/vnet-cargoescanada-build/subnets/snet-mgmt",
              "/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/rg-cargoscanada-test/providers/Microsoft.Network/virtualNetworks/vnet-cargoescanada-test/subnets/snet-cargoereport",
              "/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/rg-cargoscanada-test/providers/Microsoft.Network/virtualNetworks/vnet-cargoescanada-test/subnets/snet-cargoes-privateendpoint",
              "/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/rg-cargoscanada-test/providers/Microsoft.Network/virtualNetworks/vnet-cargoescanada-test/subnets/snet-common-flex",
              "/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/rg-cargoscanada-test/providers/Microsoft.Network/virtualNetworks/vnet-cargoescanada-test/subnets/snet-core-stg"

    ]  


static_website = {
          error_404_document = "error.html"
          index_document     = "error_502.html"
        }

tags                          = {
        "ENV": "TESTING",
        "Application Name": "cargoes canada UAT",
        "Application Owner": "Danial"

}