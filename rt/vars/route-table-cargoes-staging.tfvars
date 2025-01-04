subscription_id     = <subscription_id>
resource_group                = "cargoes-staging"
name                          = "route-table-cargoes-staging"
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
  "Route-AVDDevOps" = {
    address_prefix         = "10.237.12.0/25"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  }
  "route-Dtworld-BT-pt-lg" = {
    address_prefix         = "10.222.32.132/32"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
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
  "Route-pt-UAE" = {
    address_prefix         = "10.165.86.4/32"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  }
  "Route_Ecommerce_PNS" = {
    address_prefix         = "10.165.64.0/19"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  }
  "Route_RA_VPN" = {
    address_prefix         = "172.16.8.0/22"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.1.7"
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
  "WVD_All" = {
    address_prefix         = "10.237.1.0/24"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  }
}

tags = {
  "Application Name" = "Cargoes Platform"
  "ENV" = "TESTING"
  "Application Owner" = "Ravi Pandey"
}