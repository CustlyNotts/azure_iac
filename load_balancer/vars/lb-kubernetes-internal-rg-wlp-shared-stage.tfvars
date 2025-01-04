subscription_id     = <subscription_id>
resource_group_name = "rg-wlp-shared-stage"
location            = "UAE North"
lb_name             = "kubernetes-internal"
sku_name            = "Standard"
lb_frontend_ip_configurations = {
  a7d25d75f78e2484cb696ee47c9ec364-snet-wlp-stage-lb-uaenorth = {
    private_ip_address_allocation = "Static"
    private_ip_address            = "10.233.100.5"
    subnet_id                     = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-stage/providers/Microsoft.Network/virtualNetworks/vnet-wlp-stage-uaenorth/subnets/snet-wlp-stage-lb-uaenorth"
  },
  a6619999594c74a1eb05d89f432e1e94-snet-wlp-stage-lb-uaenorth = {
    private_ip_address_allocation = "Static"
    private_ip_address            = "10.233.100.7"
    subnet_id                     = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-stage/providers/Microsoft.Network/virtualNetworks/vnet-wlp-stage-uaenorth/subnets/snet-wlp-stage-lb-uaenorth"
  },
  acda3103f21254fc38cf1d5f2786e779-snet-wlp-stage-lb-uaenorth = {
    private_ip_address_allocation = "Static"
    private_ip_address            = "10.233.100.8"
    subnet_id                     = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-stage/providers/Microsoft.Network/virtualNetworks/vnet-wlp-stage-uaenorth/subnets/snet-wlp-stage-lb-uaenorth"
  },
  a9cc72071805f401babf011c1a7cc8ea-snet-wlp-stage-lb-uaenorth = {
    private_ip_address_allocation = "Static"
    private_ip_address            = "10.233.100.9"
    subnet_id                     = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-stage/providers/Microsoft.Network/virtualNetworks/vnet-wlp-stage-uaenorth/subnets/snet-wlp-stage-lb-uaenorth"
  },
  ad15ba8029bc14d1cbf455ccbcc82fb6-snet-wlp-stage-lb-uaenorth = {
    private_ip_address_allocation = "Static"
    private_ip_address            = "10.233.100.10"
    subnet_id                     = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-stage/providers/Microsoft.Network/virtualNetworks/vnet-wlp-stage-uaenorth/subnets/snet-wlp-stage-lb-uaenorth"
  },
  a9c959128047a473fb5374b7f59993a2-snet-wlp-stage-lb-uaenorth = {
    private_ip_address_allocation = "Static"
    private_ip_address            = "10.233.100.11"
    subnet_id                     = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-stage/providers/Microsoft.Network/virtualNetworks/vnet-wlp-stage-uaenorth/subnets/snet-wlp-stage-lb-uaenorth"
  },
  a4cd74d9f8e08485db808400474b3759-snet-wlp-stage-lb-uaenorth = {
    private_ip_address_allocation = "Static"
    private_ip_address            = "10.233.100.12"
    subnet_id                     = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-stage/providers/Microsoft.Network/virtualNetworks/vnet-wlp-stage-uaenorth/subnets/snet-wlp-stage-lb-uaenorth"
  },
  a86a022b21500472696acf2f4b8f7c04-snet-wlp-stage-lb-uaenorth = {
    private_ip_address_allocation = "Static"
    private_ip_address            = "10.233.100.13"
    subnet_id                     = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-stage/providers/Microsoft.Network/virtualNetworks/vnet-wlp-stage-uaenorth/subnets/snet-wlp-stage-lb-uaenorth"
  },
  acfa64cba373c4765b7763d16072b35d-snet-wlp-stage-lb-uaenorth = {
    private_ip_address_allocation = "Static"
    private_ip_address            = "10.233.100.15"
    subnet_id                     = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-stage/providers/Microsoft.Network/virtualNetworks/vnet-wlp-stage-uaenorth/subnets/snet-wlp-stage-lb-uaenorth"
  },
  ac4456b4b30d845a1b4019a8ecb81d48-snet-wlp-stage-lb-uaenorth = {
    private_ip_address_allocation = "Static"
    private_ip_address            = "10.233.100.14"
    subnet_id                     = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-stage/providers/Microsoft.Network/virtualNetworks/vnet-wlp-stage-uaenorth/subnets/snet-wlp-stage-lb-uaenorth"
  },
  a2da45def68de40639813018d69012c1-snet-wlp-stage-lb-uaenorth = {
    private_ip_address_allocation = "Dynamic"
    private_ip_address            = "10.233.100.4"
    subnet_id                     = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-stage/providers/Microsoft.Network/virtualNetworks/vnet-wlp-stage-uaenorth/subnets/snet-wlp-stage-lb-uaenorth"
  },
  ace7b7bd857a845c9825956aa101786e-snet-wlp-stage-lb-uaenorth = {
    private_ip_address_allocation = "Dynamic"
    private_ip_address            = "10.233.100.17"
    subnet_id                     = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-stage/providers/Microsoft.Network/virtualNetworks/vnet-wlp-stage-uaenorth/subnets/snet-wlp-stage-lb-uaenorth"
  },
  af1812a4d1028406fa0f4d6e4b217d48-snet-wlp-stage-lb-uaenorth = {
    private_ip_address_allocation = "Dynamic"
    private_ip_address            = "10.233.100.19"
    subnet_id                     = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-stage/providers/Microsoft.Network/virtualNetworks/vnet-wlp-stage-uaenorth/subnets/snet-wlp-stage-lb-uaenorth"
  },
  a35d4f67a712c416889701d0634cdec9-snet-wlp-stage-lb-uaenorth = {
    private_ip_address_allocation = "Dynamic"
    private_ip_address            = "10.233.100.16"
    subnet_id                     = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-stage/providers/Microsoft.Network/virtualNetworks/vnet-wlp-stage-uaenorth/subnets/snet-wlp-stage-lb-uaenorth"
  },
  a0b47de0890af465cafa48fffb5539f3-snet-wlp-stage-lb-uaenorth = {
    private_ip_address_allocation = "Dynamic"
    private_ip_address            = "10.233.100.6"
    subnet_id                     = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-stage/providers/Microsoft.Network/virtualNetworks/vnet-wlp-stage-uaenorth/subnets/snet-wlp-stage-lb-uaenorth"
  },
  a3fb4289099024cf2ad990959304a148 = {
    private_ip_address_allocation = "Static"
    private_ip_address            = "10.233.96.7"
    subnet_id                     = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-stage/providers/Microsoft.Network/virtualNetworks/vnet-wlp-stage-uaenorth/subnets/snet-wlp-stage-aks-uaenorth"
  },
  a46db0e1183ea4eca9886dd9b9f7dbc4-snet-wlp-stage-lb-uaenorth = {
    private_ip_address_allocation = "Dynamic"
    private_ip_address            = "10.233.100.18"
    subnet_id                     = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-stage/providers/Microsoft.Network/virtualNetworks/vnet-wlp-stage-uaenorth/subnets/snet-wlp-stage-lb-uaenorth"
  },
  a2c8673a68c8a4b8286b2f52de088e4b-snet-wlp-stage-lb-uaenorth = {
    private_ip_address_allocation = "Dynamic"
    private_ip_address            = "10.233.100.20"
    subnet_id                     = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-stage/providers/Microsoft.Network/virtualNetworks/vnet-wlp-stage-uaenorth/subnets/snet-wlp-stage-lb-uaenorth"
  },
  a0dc33a3dd61743b7a74c7c56cf0b9c5-snet-wlp-stage-lb-uaenorthh = {
    private_ip_address_allocation = "Dynamic"
    private_ip_address            = "10.233.100.21"
    subnet_id                     = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-stage/providers/Microsoft.Network/virtualNetworks/vnet-wlp-stage-uaenorth/subnets/snet-wlp-stage-lb-uaenorth"
  }
}

backend_address_pools = {
  kubernetes = {
    name = "kubernetes"
  }
}


tags = {
        "Application Name": "WLP stage",
        "Application Owner": "hussain.hashimi@dpworld.com",
        "ENV": "STAGING",
        "RITM": "RITM00123"
}