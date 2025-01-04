
subscription_id     = <subscription_id>

resource_group = "rg-cns-infra-dr"

name = "route-cnsdr-common"

disable_bgp_route_propagation = false


  "wvd-dtw" = {

    address_prefix = "10.237.5.0/24"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.219.0.103"

  }


  "Route-AVDDevOps" = {

    address_prefix = "10.237.12.0/25"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.219.0.103"

  }


  "Route-WVD-All" = {

    address_prefix = "10.237.1.0/24"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.219.0.103"

  }


}

tags = {


  "Application Owner" = "Daniel Stuart"
  "ENV" = "PROD"
  "Application Name" = "CCS-CNS"
  "RITM"    =   "00000000"


}

