subscription_id     = <subscription_id>
resource_group_name = "rg-wlp-shared-prod"
location            = "UAE North"
lb_name             = "kubernetes-internal"
sku_name            = "Standard"
lb_frontend_ip_configurations = {
  a1fa994c52e3c471f87498a19685098b-snet-wlp-prod-lb-uaenorth = {
    private_ip_address_allocation = "Static"
    private_ip_address            = "10.223.116.5"
    subnet_id                     = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-prod/providers/Microsoft.Network/virtualNetworks/vnet-wlp-prod-uaenorth/subnets/snet-wlp-prod-lb-uaenorth"
  },
  a1548eaec06db4fddb445cac44ea4931-snet-wlp-prod-lb-uaenorth = {
    private_ip_address_allocation = "Static"
    private_ip_address            = "10.223.116.6"
    subnet_id                     = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-prod/providers/Microsoft.Network/virtualNetworks/vnet-wlp-prod-uaenorth/subnets/snet-wlp-prod-lb-uaenorth"
  },
  a0fd5815cd1e144038a0f07cf6cfd911-snet-wlp-prod-lb-uaenorth = {
    private_ip_address_allocation = "Static"
    private_ip_address            = "10.223.116.7"
    subnet_id                     = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-prod/providers/Microsoft.Network/virtualNetworks/vnet-wlp-prod-uaenorth/subnets/snet-wlp-prod-lb-uaenorth"
  },
  aff6da8b269514073b17bf30ec1e7681-snet-wlp-prod-lb-uaenorth = {
    private_ip_address_allocation = "Static"
    private_ip_address            = "10.223.116.8"
    subnet_id                     = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-prod/providers/Microsoft.Network/virtualNetworks/vnet-wlp-prod-uaenorth/subnets/snet-wlp-prod-lb-uaenorth"
  },
  a5b06e0a6e5c342f6a8f73e2608bf7a0-snet-wlp-prod-lb-uaenorth = {
    private_ip_address_allocation = "Static"
    private_ip_address            = "10.223.116.9"
    subnet_id                     = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-prod/providers/Microsoft.Network/virtualNetworks/vnet-wlp-prod-uaenorth/subnets/snet-wlp-prod-lb-uaenorth"
  },
  af91438260e354cefb5626bb3dc4d19b-snet-wlp-prod-lb-uaenorth = {
    private_ip_address_allocation = "Static"
    private_ip_address            = "10.223.116.10"
    subnet_id                     = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-prod/providers/Microsoft.Network/virtualNetworks/vnet-wlp-prod-uaenorth/subnets/snet-wlp-prod-lb-uaenorth"
  },
  ae4f8f85bb7cd45559673fc38df74860-snet-wlp-prod-lb-uaenorth = {
    private_ip_address_allocation = "Static"
    private_ip_address            = "10.223.116.11"
    subnet_id                     = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-prod/providers/Microsoft.Network/virtualNetworks/vnet-wlp-prod-uaenorth/subnets/snet-wlp-prod-lb-uaenorth"
  },
  a673f878763a64379a2ae94e1e467f0c-snet-wlp-prod-lb-uaenorth = {
    private_ip_address_allocation = "Static"
    private_ip_address            = "10.223.116.12"
    subnet_id                     = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-prod/providers/Microsoft.Network/virtualNetworks/vnet-wlp-prod-uaenorth/subnets/snet-wlp-prod-lb-uaenorth"
  },
  aabcc89b09a8743698bc8d7f4efc0d39-snet-wlp-prod-lb-uaenorth = {
    private_ip_address_allocation = "Static"
    private_ip_address            = "10.223.116.13"
    subnet_id                     = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-prod/providers/Microsoft.Network/virtualNetworks/vnet-wlp-prod-uaenorth/subnets/snet-wlp-prod-lb-uaenorth"
  },
  a5df2e6f523d341909743abbf8ca60ec-snet-wlp-prod-lb-uaenorth = {
    private_ip_address_allocation = "Static"
    private_ip_address            = "10.223.116.14"
    subnet_id                     = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-prod/providers/Microsoft.Network/virtualNetworks/vnet-wlp-prod-uaenorth/subnets/snet-wlp-prod-lb-uaenorth"
  },
  a5df2e6f523d341909743abbf8ca60ec-snet-wlp-prod-lb-uaenorth = {
    private_ip_address_allocation = "Static"
    private_ip_address            = "10.223.116.14"
    subnet_id                     = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-prod/providers/Microsoft.Network/virtualNetworks/vnet-wlp-prod-uaenorth/subnets/snet-wlp-prod-lb-uaenorth"
  },
  a93889f30bffe4cca963542f6795e277-snet-wlp-prod-lb-uaenorth = {
    private_ip_address_allocation = "Static"
    private_ip_address            = "10.223.116.15"
    subnet_id                     = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-prod/providers/Microsoft.Network/virtualNetworks/vnet-wlp-prod-uaenorth/subnets/snet-wlp-prod-lb-uaenorth"
  },
  a5877222046c54a82964bf20919e9124-snet-wlp-prod-lb-uaenorth = {
    private_ip_address_allocation = "Dynamic"
    private_ip_address            = "10.223.116.4"
    subnet_id                     = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-prod/providers/Microsoft.Network/virtualNetworks/vnet-wlp-prod-uaenorth/subnets/snet-wlp-prod-lb-uaenorth"
  },
  a7f8796b0572d4606af9b41c48313c75-snet-wlp-prod-lb-uaenorth = {
    private_ip_address_allocation = "Dynamic"
    private_ip_address            = "10.223.116.16"
    subnet_id                     = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-prod/providers/Microsoft.Network/virtualNetworks/vnet-wlp-prod-uaenorth/subnets/snet-wlp-prod-lb-uaenorth"
  },
  a39545bd4ed4749edb9fe8eb026c07f6-snet-wlp-prod-lb-uaenorth = {
    private_ip_address_allocation = "Dynamic"
    private_ip_address            = "10.223.116.17"
    subnet_id                     = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-prod/providers/Microsoft.Network/virtualNetworks/vnet-wlp-prod-uaenorth/subnets/snet-wlp-prod-lb-uaenorth"
  },
  aa172e051c51b40149dca09af89686ef = {
    private_ip_address_allocation = "Static"
    private_ip_address            = "10.223.112.36"
    subnet_id                     = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-prod/providers/Microsoft.Network/virtualNetworks/vnet-wlp-prod-uaenorth/subnets/snet-wlp-prod-lb-uaenorth"
  },
  adea0cbe84e3043e4bef8127b1ce2a32-snet-wlp-prod-lb-uaenorth = {
    private_ip_address_allocation = "Dynamic"
    private_ip_address            = "10.223.116.18"
    subnet_id                     = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-prod/providers/Microsoft.Network/virtualNetworks/vnet-wlp-prod-uaenorth/subnets/snet-wlp-prod-lb-uaenorth"
  },
  a6ffdbd8743014e00a938a591b305727-snet-wlp-prod-lb-uaenorth = {
    private_ip_address_allocation = "Dynamic"
    private_ip_address            = "10.223.116.19"
    subnet_id                     = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-prod/providers/Microsoft.Network/virtualNetworks/vnet-wlp-prod-uaenorth/subnets/snet-wlp-prod-lb-uaenorth"
  },
  a152d71f2f42c45a0a260ee3fe694511-snet-wlp-prod-lb-uaenorth = {
    private_ip_address_allocation = "Dynamic"
    private_ip_address            = "10.223.116.20"
    subnet_id                     = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-prod/providers/Microsoft.Network/virtualNetworks/vnet-wlp-prod-uaenorth/subnets/snet-wlp-prod-lb-uaenorth"
  },
}

backend_address_pools = {
  kubernetes = {
    name = "kubernetes"
  }
}


tags = {
        "Application Name": "wlp Prod",
        "Application Owner": "hussain.hashimi@dpworld.com",
        "ENV": "PROD",
        "RITM": "RITM00123"
}