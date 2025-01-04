subscription_id     = <subscription_id>
resource_group_name = "rg-wlp-shared-dev"
location            = "UAE North"
lb_name             = "kubernetes"
sku_name            = "Standard"
lb_frontend_ip_configurations = {
   "63235abe-a940-49cc-a792-ddd7b95e164c" = {
      name  = "63235abe-a940-49cc-a792-ddd7b95e164c"
      private_ip_address_allocation = "Dynamic"
      public_ip_address_id          = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-shared-dev/providers/Microsoft.Network/publicIPAddresses/63235abe-a940-49cc-a792-ddd7b95e164c"

  },

  "a75b4dcd247e745e093780f5efca7e77" = {
       name = "a75b4dcd247e745e093780f5efca7e77"
       private_ip_address_allocation = "Dynamic"
       public_ip_address_id = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-shared-dev/providers/Microsoft.Network/publicIPAddresses/kubernetes-a75b4dcd247e745e093780f5efca7e77"
  },

  "a47e5a6706b2942ee904bd7fcbc8e4a4" = {
       name = "a47e5a6706b2942ee904bd7fcbc8e4a4"
       private_ip_address_allocation = "Dynamic"
       public_ip_address_id = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-shared-dev/providers/Microsoft.Network/publicIPAddresses/kubernetes-a47e5a6706b2942ee904bd7fcbc8e4a4"
  }
}

backend_address_pools = {
  aksOutboundBackendPool = {
    name = "aksOutboundBackendPool"
  }
}

tags = {
        "Application Name": "WLP Dev",
        "Application Owner": "hussain.hashimi@dpworld.com",
        "ENV": "DEV",
        "RITM": "RITM00123"
}