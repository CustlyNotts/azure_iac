
subscription_id     = <subscription_id>

resource_group = "rg-cns-infra-prod"

name = "route-cns-prod"

disable_bgp_route_propagation = false

  "route-LGN4-PROD" = {

    address_prefix = "192.168.3.131/32"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.219.0.230"

  }

  "wvd-dtw" = {

    address_prefix = "10.237.5.0/24"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.216.0.103"

  }


  "Route-AVDDevOps" = {

    address_prefix = "10.237.12.0/25"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.216.0.103"

  }


  "Route-WVD-All" = {

    address_prefix = "10.237.1.0/24"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.216.0.103"

  }


}

tags = {


  "Application Owner" = "Daniel"

  "ENV" = "PROD"

  "Application Name" = "CCS-CNS"


}

