subscription_id     = <subscription_id>
resource_group_name           = "Rg-cargoes-logistics-prod"
name                          = "Route-cargoes-logistics-prod1"
disable_bgp_route_propagation = true # Set "true", to prevent the propagation of on-premises routes to the network interfaces in associated subnets.
routes = {
"canada-monitoring" = {
    address_prefix         = "10.152.4.136/32"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.1.7"
  }
  "Canada-prod" = {
    address_prefix         = "10.42.3.0/24"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.1.7"
  }
  "Route_SEC_CheckPoint_EDR" = {
    address_prefix         = "10.254.4.4/32"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  }
  "Route_UAE_SEC_DLP_ME_VA" = {
    address_prefix         = "10.254.7.0/24"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  }
  "VPN" = {
    address_prefix         = "172.16.8.0/22"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.1.7"
  }
  "WVD_All" = {
    address_prefix         = "10.237.1.0/24"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.1.7"
  }
  "internet" = {
    address_prefix         = "0.0.0.0/0"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  }
}
tags = {
  "Application Name" : "Cargoes Logistis",
  "Application Owner" : "Udit Srivastav",
  "ENV" : "PROD"
}