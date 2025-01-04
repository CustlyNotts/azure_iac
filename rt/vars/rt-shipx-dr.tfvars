subscription_id     = <subscription_id>
resource_group                = "rg-cargoesshipxdr-infra"
name                          = "rt-shipx-dr"
disable_bgp_route_propagation = false # Set "true", to prevent the propagation of on-premises routes to the network interfaces in associated subnets.
routes = {

  "BA_ADF_Route" = {
    address_prefix         = "10.220.1.7/32"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  }

}