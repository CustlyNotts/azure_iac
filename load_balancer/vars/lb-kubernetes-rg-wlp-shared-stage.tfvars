subscription_id     = <subscription_id>
resource_group_name = "rg-wlp-shared-stage"
location            = "UAE North"
lb_name             = "kubernetes"
sku_name            = "Standard"
lb_frontend_ip_configurations = {
  4690afbc-bf38-4bf0-aa9a-721e19646614 = {
    private_ip_address_allocation = "Dynamic"
  },
  a88833fb4f2ca4ef2958ee9071d7b14f = {
    private_ip_address_allocation = "Dynamic"
  },
  a21abd3752be342a0a2ef97e8c2b2f5b = {
    private_ip_address_allocation = "Dynamic"
  }
}

backend_address_pools = {
  aksOutboundBackendPool = {
    name = "aksOutboundBackendPool"
  },
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