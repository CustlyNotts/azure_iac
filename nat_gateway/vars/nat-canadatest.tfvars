subscription_id     = <subscription_id>
resource_group_name      = "rg-cargoescanada-prod"
nat_gateway_name         = "nat-canadatest"
nat_gw_sku               = "Standard"
nat_gateway_idle_timeout = 4
public_ip_ids            = ["/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/rg-cargoescanada-prod/providers/Microsoft.Network/publicIPAddresses/PIP-cargoes-test"]
subnet_ids               = ["/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/rg-cargoescanada-prod/providers/Microsoft.Network/virtualNetworks/vnet-cargoscanada-prod/subnets/snet-cargoestest"]
create_public_ip         = false
public_ip_name           = "PIP-cargoes-test"
allocation_method        = "Static"
pip_sku                  = "Standard"
tags = {
        "ENV": "PROD",
        "Application Name": "Cargoes Canada ",
        "Application Owner": "Daniel Stuart"
}