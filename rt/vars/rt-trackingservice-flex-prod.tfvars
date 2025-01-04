subscription_id     = <subscription_id>
resource_group_name           = "rg-cargoestrackingservice-infra-prod"
name                          = "rt-trackingservice-flex-prod"
disable_bgp_route_propagation = false # Set "true", to prevent the propagation of on-premises routes to the network interfaces in associated subnets.
routes = {
  "Route_CDP_Management_IR" = {
    address_prefix         = "10.220.224.0/24"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  }

}