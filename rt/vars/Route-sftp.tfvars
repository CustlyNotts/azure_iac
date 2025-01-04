subscription_id     = <subscription_id>
resource_group                = "Rg-sftp-dev"
name                          = "Route-sftp"
disable_bgp_route_propagation = false # Set "true", to prevent the propagation of on-premises routes to the network interfaces in associated subnets.
routes = {
  "route-wvdall" = {
    address_prefix         = "10.237.1.0/24"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.202.0.116"
  }
  "Route-N4" = {
    address_prefix         = "192.168.3.129/32"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.202.0.20"
  }
  "Internet" = {
    address_prefix         = "0.0.0.0/0"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.202.0.20"
  }
  "Route-DTW-AVD" = {
    address_prefix         = "10.237.5.0/24"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.202.0.116"
  }
  "Route_UAE_Manage_Engine" = {
    address_prefix         = "10.254.7.14/32"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.202.0.116"
  }
}