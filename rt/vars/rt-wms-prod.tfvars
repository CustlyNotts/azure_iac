subscription_id     = <subscription_id>
resource_group_name           = "rg-wms-infra-prod"
name                          = "rt-wms-prod"
disable_bgp_route_propagation = false # Set "true", to prevent the propagation of on-premises routes to the network interfaces in associated subnets.
routes = {
}