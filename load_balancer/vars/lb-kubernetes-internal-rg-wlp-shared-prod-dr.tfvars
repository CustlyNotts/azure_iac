subscription_id     = <subscription_id>
resource_group_name = "rg-wlp-shared-prod-dr"
location            = "UAE Central"
lb_name             = "kubernetes-internal"
sku_name            = "Standard"
lb_frontend_ip_configurations = {
  af103cbb8dccc42769d07873d4be4e4b-snet-wlp-prod-dr-lb-uaecentral = {
    private_ip_address_allocation = "Static"
    private_ip_address            = "10.233.132.5"
    subnet_id                     = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-prod-dr/providers/Microsoft.Network/virtualNetworks/vnet-wlp-prod-dr-uaecentral/subnets/snet-wlp-prod-dr-lb-uaecentral"
  },
  aafef2ddbfd884d14866dcfeeace09fe-snet-wlp-prod-dr-lb-uaecentral = {
    private_ip_address_allocation = "Static"
    private_ip_address            = "10.233.132.6"
    subnet_id                     = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-prod-dr/providers/Microsoft.Network/virtualNetworks/vnet-wlp-prod-dr-uaecentral/subnets/snet-wlp-prod-dr-lb-uaecentral"
  },
  a7ca5d98e3cc347b3b4b2b610f9892ef-snet-wlp-prod-dr-lb-uaecentral = {
    private_ip_address_allocation = "Static"
    private_ip_address            = "10.233.132.7"
    subnet_id                     = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-prod-dr/providers/Microsoft.Network/virtualNetworks/vnet-wlp-prod-dr-uaecentral/subnets/snet-wlp-prod-dr-lb-uaecentral"
  },
   af4db2b3d0ef849388cc58a58d62df5f-snet-wlp-prod-dr-lb-uaecentral = {
    private_ip_address_allocation = "Static"
    private_ip_address            = "10.233.132.8"
    subnet_id                     = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-prod-dr/providers/Microsoft.Network/virtualNetworks/vnet-wlp-prod-dr-uaecentral/subnets/snet-wlp-prod-dr-lb-uaecentral"
  },
  a8dafbd24cc954827af461dd219f563b-snet-wlp-prod-dr-lb-uaecentral = {
    private_ip_address_allocation = "Static"
    private_ip_address            = "10.233.132.9"
    subnet_id                     = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-prod-dr/providers/Microsoft.Network/virtualNetworks/vnet-wlp-prod-dr-uaecentral/subnets/snet-wlp-prod-dr-lb-uaecentral"
  },
  a760b070ab2a446ecb59309bcf016d01-snet-wlp-prod-dr-lb-uaecentral = {
    private_ip_address_allocation = "Static"
    private_ip_address            = "10.233.132.10"
    subnet_id                     = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-prod-dr/providers/Microsoft.Network/virtualNetworks/vnet-wlp-prod-dr-uaecentral/subnets/snet-wlp-prod-dr-lb-uaecentral"
  },
  a6a2277140762437aa6401bd08ede403-snet-wlp-prod-dr-lb-uaecentral = {
    private_ip_address_allocation = "Static"
    private_ip_address            = "10.233.132.11"
    subnet_id                     = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-prod-dr/providers/Microsoft.Network/virtualNetworks/vnet-wlp-prod-dr-uaecentral/subnets/snet-wlp-prod-dr-lb-uaecentral"
  },
  a5a4ed9ab043744dfb9d7440680b8d54-snet-wlp-prod-dr-lb-uaecentral = {
    private_ip_address_allocation = "Static"
    private_ip_address            = "10.233.132.12"
    subnet_id                     = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-prod-dr/providers/Microsoft.Network/virtualNetworks/vnet-wlp-prod-dr-uaecentral/subnets/snet-wlp-prod-dr-lb-uaecentral"
  },
  a752e20c9cd8d465cb9d1b0c260cdf58-snet-wlp-prod-dr-lb-uaecentral = {
    private_ip_address_allocation = "Static"
    private_ip_address            = "10.233.132.13"
    subnet_id                     = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-prod-dr/providers/Microsoft.Network/virtualNetworks/vnet-wlp-prod-dr-uaecentral/subnets/snet-wlp-prod-dr-lb-uaecentral"
  },
  a67a0ed6bd3524aecbade9eccadd778c-snet-wlp-prod-dr-lb-uaecentral = {
    private_ip_address_allocation = "Static"
    private_ip_address            = "10.233.132.14"
    subnet_id                     = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-prod-dr/providers/Microsoft.Network/virtualNetworks/vnet-wlp-prod-dr-uaecentral/subnets/snet-wlp-prod-dr-lb-uaecentral"
  },
  a0e7cf1e07d1f4ec581d04959c952d43-snet-wlp-prod-dr-lb-uaecentral = {
    private_ip_address_allocation = "Static"
    private_ip_address            = "10.233.132.15"
    subnet_id                     = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-prod-dr/providers/Microsoft.Network/virtualNetworks/vnet-wlp-prod-dr-uaecentral/subnets/snet-wlp-prod-dr-lb-uaecentral"
  },
  a5c3859312ce045239b1d976967d8a69 = {
    private_ip_address_allocation = "Static"
    private_ip_address            = "10.233.128.34"
    subnet_id                     = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-prod-dr/providers/Microsoft.Network/virtualNetworks/vnet-wlp-prod-dr-uaecentral/subnets/snet-wlp-prod-dr-lb-uaecentral"
  }
}

backend_address_pools = {
  kubernetes = {
    name = "kubernetes"
  }
}


tags = {
        "Application Name": "DR Setup",
        "Application Owner": "Nihil Babu",
        "ENV": "DR",
        "RITM": "RITM0012345"
}