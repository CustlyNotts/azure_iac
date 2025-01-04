subscription_id     = <subscription_id>
resource_group_name           = "cargoes-staging-dr"
name                          = "route-table-cargoes-staging-dr"
disable_bgp_route_propagation = true # Set "true", to prevent the propagation of on-premises routes to the network interfaces in associated subnets.
routes = {
"canada-monitoring" = {
    address_prefix         = "10.152.4.136/32"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.1.7"
  }
  "canada-test" = {
    address_prefix         = "10.41.2.0/24"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.1.7"
  }
  "EDR_Checkpoint" = {
    address_prefix         = "10.254.4.4/32"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  }
  "Internet" = {
    address_prefix         = "0.0.0.0/0"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.1.7"
  }
  "RosNonprod" = {
    address_prefix         = "10.171.128.0/17"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  }
  "route-cargoes-platform-green-balockchain-staging" = {
    address_prefix         = "10.191.0.0/21"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  }
  "route-cargoes-platform-green-staging-logistics-dev" = {
    address_prefix         = "10.242.0.0/19"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  }
  "route-Dtworld-BT-pt-lg" = {
    address_prefix         = "10.222.32.132/32"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.222.32.20"
  }
  "Route-DTworld-cc-canada" = {
    address_prefix         = "10.222.254.4/32"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.200.0.116"
  }
  "route-Dtworld-PT" = {
    address_prefix         = "10.156.9.5/32"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  }
  "route-DTworld-vm-pt-lg" = {
    address_prefix         = "172.22.33.49/32"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.202.0.116"
  }
  "route-platform-staging-green-finance-staging" = {
    address_prefix         = "10.240.20.0/22"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  }
  "route-platform-staging-green-flow-dev" = {
    address_prefix         = "10.243.0.0/19"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  }
  "Route-pt-UAE" = {
    address_prefix         = "10.165.86.4/32"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  }
  "Route_CargoesRunnerproddr" = {
    address_prefix         = "10.7.112.0/20"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.202.0.116"
  }
  "Route_Ecommerce_PNS" = {
    address_prefix         = "10.165.64.0/19"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  }
  "Route_RA_VPN" = {
    address_prefix         = "172.16.8.0/22"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  }
  "Route_UAE_SEC_DLP_ME_VA" = {
    address_prefix         = "10.254.7.0/24"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  }
  "Route_Vnet_CargoesRunnernonProd" = {
    address_prefix         = "10.153.224.0/22"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.1.7"
  }
  "Route_Zodiac" = {
    address_prefix         = "10.91.62.26/32"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.1.7"
  }
  "wvdall" = {
    address_prefix         = "10.237.1.0/24"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  }
  "staging-finace.cargooes.com" = {
    address_prefix         = "40.119.162.93/32"
    next_hop_type          = "Internet"
  }
}

tags = {
  "Application Name" = "Cargoes Platform Staging"
  "ENV" = "Staging"
  "Application Owner" = "Jay Li/ Jayakrishna Alwar"
}