subscription_id     = <subscription_id>
resource_group                = "rg-blockchain-infra-prod"
name                          = "rt-blockchain-prod"
disable_bgp_route_propagation = true # Set "true", to prevent the propagation of on-premises routes to the network interfaces in associated subnets.
tags = {
  "Application Name" = "Azure Infra"
  "ENV" = "INFRA"
  "Application Owner" = "Shaloof/Gaurav"
}