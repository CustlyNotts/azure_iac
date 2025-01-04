subscription_id     = <subscription_id>
resource_group_name           = "rg-btinfra-nonprod"
name                          = "rt-appgw-nonprod"
disable_bgp_route_propagation = false # Set "true", to prevent the propagation of on-premises routes to the network interfaces in associated subnets.
routes = {

  "AzureCloud" = {
    address_prefix         = "AzureCloud"
    next_hop_type          = "Internet"
  }