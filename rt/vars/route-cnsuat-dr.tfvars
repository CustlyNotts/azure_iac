subscription_id     = <subscription_id>
resource_group_name = "rg-cns-infra-dr"
name = "route-cnsuat-dr"

disable_bgp_route_propagation = false

routes = {

  "Route-wvd-dtw" = {
    address_prefix = "10.237.5.0/24"
    next_hop_type = "VirtualAppliance"
    next_hop_in_ip_address = "10.219.8.68"
  }

  "Route-AVDDevOps" = {
    address_prefix = "10.237.12.0/25"
    next_hop_type = "VirtualAppliance"
    next_hop_in_ip_address = "10.219.8.68"
  }

  "Route-WVD-All" = {
    address_prefix = "10.237.1.0/24"
    next_hop_type = "VirtualAppliance"
    next_hop_in_ip_address = "10.219.8.68"
  }


}

tags = {

  "Application Owner" = "Daniel Stuart"
  "ENV" = "DR"
  "Application Name" = "CCS-CNS"
  "RITM"    =   "00000000"

}

