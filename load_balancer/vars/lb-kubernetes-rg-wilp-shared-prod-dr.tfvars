subscription_id     = <subscription_id>
resource_group_name = "rg-wlp-shared-prod-dr"
location            = "UAE Central"
lb_name             = "kubernetes"
sku_name            = "Standard"
lb_frontend_ip_configurations = {
  7f590a88-d046-4de0-a446-a3486bee1301 = {
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
        "Application Name": "DR Setup",
        "Application Owner": "Nihil Babu",
        "RITM": "RITM0012345",
        "ENV": "DR"
}