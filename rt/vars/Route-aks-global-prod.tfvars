subscription_id     = <subscription_id>
resource_group                = "rg-global-infra-prod"
name                          = "Route-aks-global-prod"
disable_bgp_route_propagation = false # Set "true", to prevent the propagation of on-premises routes to the network interfaces in associated subnets.
routes = {
  "Route-AVD-DTW" = {
    address_prefix         = "10.237.5.0/24"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  }
  "Route-UAE-VMglobalBuild" = {
    address_prefix         = "10.170.169.4/32"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  }


  "Route_Berbera-Prod" = {
    address_prefix         = "10.10.100.147/32"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.1.7"
  }
  "Route_LCIT_Onprem" = {
    address_prefix         = "172.19.240.0/24"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.1.7"
  }
  "Route_SanAntonio-PROD" = {
    address_prefix         = "10.11.40.56/32"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.1.7"
  }

  "Route_SEC_CheckPoint_EDR" = {
    address_prefix         = "10.254.4.4/32"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  }

  "RoutetoWVDall" = {
    address_prefix         = "10.237.1.0/24"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  }
  "SanAntonio-Capcis" = {
    address_prefix         = "10.11.40.166/32"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.1.7"
  }
  "VPN" = {
    address_prefix         = "172.16.8.0/22"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.1.7"
  }

}


tags = {
  "Application Name"  = "CCS"
  "Application Owner" = "Daniel Stuart/Linu Joseph/Pradeesh Raju"
  "ENV"               = "PROD"
}