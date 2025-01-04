subscription_id     = <subscription_id>
resource_group_name = "rg-fortisoar-prod"
location            = "uaenorth"
lb_name             = "lb-fortimssp-prod"
sku_name            = "Standard"
zones = ["1", "2", "3"]
lb_frontend_ip_configurations = {
  frontend-mssp-prod = {
    name = "frontend-mssp-prod"
    subnet_id                     = "/subscriptions/91398afa-7cd4-4407-b48d-769bd28f53c8/resourceGroups/rg-fortisoar-prod/providers/Microsoft.Network/virtualNetworks/vnet-fortisoar-int-prod/subnets/snet-fortisoar-int-prod"
    private_ip_address            = "10.48.0.175"
    private_ip_address_allocation = "Static"
  }
}

backend_address_pools = {
  fortimssp-prod-backend = {
    name = "fortimssp-prod-backend"
  }
}

lb_rules = {
    rule1 = {
      name                           = "fortimssp-lb-rule"
      protocol                       = "Tcp"
      frontend_port                  = 443
      backend_port                   = 443
      frontend_ip_configuration_name = "frontend-mssp-prod"
      disable_outbound_snat          = true
      enable_tcp_reset               = true
      backend_address_pool_ids       = ["/subscriptions/91398afa-7cd4-4407-b48d-769bd28f53c8/resourceGroups/rg-fortisoar-prod/providers/Microsoft.Network/loadBalancers/lb-fortimssp-prod/backendAddressPools/fortimssp-prod-backend"]
    }
}

lb_probes = {
  probe1 = {
    name                             = "health"
    port                             = 443
    protocol                         = "Tcp"
    interval_in_seconds              = 5
    number_of_probes                 = 1
  }
}

tags = {
        "Application Name": "FortiSOAR",
        "Application Owner": "Kiran/Tariq",
        "Env": "PROD"

}
