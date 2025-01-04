subscription_id     = <subscription_id>
resource_group                = "rg-cargoeslogistics-infra-dr"
name                          = "rt-cargoeslogistics-dr"
disable_bgp_route_propagation = false # Set "true", to prevent the propagation of on-premises routes to the network interfaces in associated subnets.
routes = {
  "route-wvdall" = {
    address_prefix         = "10.237.1.0/24"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.202.0.116"
  }

  "Internet" = {
    address_prefix         = "0.0.0.0/0"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.202.0.116"
  }
}