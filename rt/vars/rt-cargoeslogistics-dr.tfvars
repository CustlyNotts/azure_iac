subscription_id     = <subscription_id>
resource_group_name           = "rg-cargoeslogistics-infra-dr"
name                          = "rt-cargoeslogistics-dr"
disable_bgp_route_propagation = false # Set "true", to prevent the propagation of on-premises routes to the network interfaces in associated subnets.
routes = {
  "Internet" = {
    address_prefix         = "0.0.0.0/0"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.202.0.116"
  },
  "route-wvdall" = {
    address_prefix         = "10.237.1.0/24"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.202.0.116"
  }
}

tags = {
  "Application Name" = "Cargoes Logistics"
  "ENV" = "DR"
  "Application Owner" = "Utkarsh Kulshrestha"
  "RITM"= "RITM123456"
}