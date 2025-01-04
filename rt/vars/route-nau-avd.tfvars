subscription_id     = <subscription_id>
name  = "route-nau-avd"
resource_group_name = "rgnauavd"
disable_bgp_route_propagation = true
routes = {
  "route-internet" = {
    address_prefix         = "0.0.0.0/0"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.1.7"
  }
  "route-uaesechub" = {
    address_prefix         = "10.254.0.0/16"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.1.7"
  }
  "Route-NAU-Env" = {
    address_prefix         = "10.236.0.0/16"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.1.7"
  }
  "Route_UAE_SEC_DLP_ME_VA" = {
    address_prefix         = "10.254.7.0/24"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  }
  "Route_AZadmin_AVD" = {
    address_prefix         = "10.237.1.0/24"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  }
  "Route_SEC_CheckPoint_EDR" = {
    address_prefix         = "10.254.4.4/32"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  }
}

tags = {
  "Application Name" : "NAU AVD",
  "Application Owner" : "Ibrahim Ali Al-Ali",
  "ENV" : "PROD"
}
