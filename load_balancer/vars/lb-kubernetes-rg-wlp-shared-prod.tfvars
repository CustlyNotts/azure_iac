subscription_id     = <subscription_id>
resource_group_name = "rg-wlp-shared-prod"
location            = "UAE North"
lb_name             = "kubernetes"
sku_name            = "Standard"
lb_frontend_ip_configurations = {
  2ee99910-4b47-458c-9193-0eff5638e92b = {
    private_ip_address_allocation = "Dynamic"
  },
  a150fa4b47e374aef8da2707b548bbab = {
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
        "Application Name": "wlp Prod",
        "Application Owner": "hussain.hashimi@dpworld.com",
        "ENV": "PROD",
        "RITM": "RITM00123"
}