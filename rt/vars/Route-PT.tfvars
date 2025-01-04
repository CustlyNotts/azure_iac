subscription_id     = <subscription_id>
resource_group                = "rg-cnsrundeck-nonprod"
name                          = "Route-PT"
disable_bgp_route_propagation = false # Set "true", to prevent the propagation of on-premises routes to the network interfaces in associated subnets.
routes = {
  "VPN" = {
    address_prefix         = "172.16.10.0/24"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.222.4.20"
  }
  "WVDALL" = {
    address_prefix         = "10.237.1.0/24"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.202.0.116"
  }
  "Route_UAE_Manage_Engine" = {
    address_prefix         = "10.254.7.14/32"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.202.0.116"
  }
  "Route-AVDDevOps" = {
    address_prefix         = "10.237.12.0/25"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.202.0.116"
  }
}