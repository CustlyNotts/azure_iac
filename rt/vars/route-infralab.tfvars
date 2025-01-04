
subscription_id     = <subscription_id>
resource_group_name = "aks-lab"
name = "Route-lab-test"
disable_bgp_route_propagation = false
route_default = true
routes = {
  "wvd-dtw" = {
    address_prefix = "10.237.5.0/24"
    next_hop_type = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  }
  "Route_UAE_Manage_Engine" = {
    address_prefix = "10.254.7.14/32"
    next_hop_type = "VirtualAppliance"
    next_hop_in_ip_address = "10.202.0.116"
  }
}

tags = {
  "Application Owner" = "Global Infra Team"
  "Application Name" = "Cloud Infra"
  "ENV" = "LAB"
}

