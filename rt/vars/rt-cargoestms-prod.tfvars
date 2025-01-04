subscription_id     = <subscription_id>
resource_group_name           = "rg-cargoestms-prod-infra"
name                          = "rt-cargoestms-prod"
disable_bgp_route_propagation = false # Set "true", to prevent the propagation of on-premises routes to the network interfaces in associated subnets.
routes = {
}
tags = {
  "Application Owner" : "Shiv Suthar/Ritesh Singh",
  "ENV" : "PROD",
  "Application Name" : "Transportation Management System"
}