subscription_id     = <subscription_id>
resource_group_name = "rg-wlp-shared-prod-dr"
location            = "UAE Central"
lb_name             = "kubernetes-internal"
sku_name            = "Standard"
lb_frontend_ip_configurations = {
   "af103cbb8dccc42769d07873d4be4e4b-snet-wlp-prod-dr-lb-uaecentral" = {
      name  = "af103cbb8dccc42769d07873d4be4e4b-snet-wlp-prod-dr-lb-uaecentral"
      private_ip_address_allocation = "Static"
      

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