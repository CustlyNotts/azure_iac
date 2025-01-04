subscription_id     = <subscription_id>
resource_group                = "rg-cargoesprod-SharedInfra-prod"
name                          = "rt-cargoessharedaks-prod"
disable_bgp_route_propagation = true # Set "true", to prevent the propagation of on-premises routes to the network interfaces in associated subnets.
routes = {
"Internet" = {
    address_prefix         = "0.0.0.0/0"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  }
  "Route-AVDDevOps" = {
    address_prefix         = "10.237.12.0/25"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  }
  "Route_BlockchainUAE" = {
    address_prefix         = "10.191.32.0/19"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  }
  "Route_CargoesFinance" = {
    address_prefix         = "10.240.40.0/22"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  }
  "Route_CargoesFlow" = {
    address_prefix         = "10.243.32.0/19"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  }
  "Route_CargoesLogistics" = {
    address_prefix         = "10.242.32.0/19"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  }
  "Route_CargoesROS" = {
    address_prefix         = "10.171.0.0/17"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  }
  "Route_CargoesRunner" = {
    address_prefix         = "10.159.0.0/16"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  }
  "Route_CargoesRunnerdr" = {
    address_prefix         = "10.7.112.0/20"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.202.0.116"
  }
  "Route_SEC_CheckPoint_EDR" = {
    address_prefix         = "10.254.4.4/32"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  }
  "Route_UAE_SEC_DLP_ME_VA" = {
    address_prefix         = "10.254.7.0/24"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  }
   "VPN" = {
    address_prefix         = "172.16.8.0/22"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.1.7"
  }
   "WVD" = {
    address_prefix         = "10.237.1.0/24"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  }
}
tags = {
  "Application Name" : "Cargoes Shared ",
  "Application Owner" : "Jay Li / Jayakrishna Alwar",
  "ENV" : "INFRA"
}