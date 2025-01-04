subscription_id     = <subscription_id>
resource_group_name = "rg-fortisoar-prod"
location            = "uaenorth"
lb_name             = "lb-fortisme-prod"
sku_name            = "Standard"
zones = ["1", "2", "3"]
lb_frontend_ip_configurations = {
  frontend-sme-prod = {
    name = "frontend-sme-prod"
    subnet_id                     = "/subscriptions/91398afa-7cd4-4407-b48d-769bd28f53c8/resourceGroups/rg-fortisoar-prod/providers/Microsoft.Network/virtualNetworks/vnet-fortisoar-int-prod/subnets/snet-fortisoar-int-prod"
    private_ip_address            = "10.48.0.176"
    private_ip_address_allocation = "Static"
  }
}

backend_address_pools = {
  fortisme-prod-backend = {
    name = "fortisme-prod-backend"
  }
}

lb_rules = {
    rule1 = {
      name                           = "fortisme-prod-rule"
      protocol                       = "Tcp"
      frontend_port                  = 5671
      backend_port                   = 5671
      frontend_ip_configuration_name = "frontend-sme-prod"
      disable_outbound_snat          = true
      enable_tcp_reset               = true
      backend_address_pool_ids       = ["/subscriptions/91398afa-7cd4-4407-b48d-769bd28f53c8/resourceGroups/rg-fortisoar-prod/providers/Microsoft.Network/loadBalancers/lb-fortisme-prod/backendAddressPools/fortisme-prod-backend"]
    },
    rule2 = {
      name                           = "fortisme-diag"
      protocol                       = "Tcp"
      frontend_port                  = 15671
      backend_port                   = 15671
      frontend_ip_configuration_name = "frontend-sme-prod"
      disable_outbound_snat          = true
      enable_tcp_reset               = true
      backend_address_pool_ids       = ["/subscriptions/91398afa-7cd4-4407-b48d-769bd28f53c8/resourceGroups/rg-fortisoar-prod/providers/Microsoft.Network/loadBalancers/lb-fortisme-prod/backendAddressPools/fortisme-prod-backend"]
    }
}

lb_probes = {
  probe1 = {
    name                             = "health"
    port                             = 5671
    protocol                         = "Tcp"
    interval_in_seconds              = 5
    number_of_probes                 = 1
  },
  probe2 = {
    name                             = "healthsme"
    port                             = 15671
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
