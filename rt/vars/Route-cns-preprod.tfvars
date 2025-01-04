
subscription_id     = <subscription_id>

resource_group_name = "rg-cns-infra-nonprod"

name = "Route-cns-preprod"

disable_bgp_route_propagation = false

routes = {


  "wvd-dtw" = {

    address_prefix = "10.237.5.0/24"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.219.0.167"

  }

  "Route-AVDDevOps" = {

    address_prefix = "10.237.12.0/25"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.219.0.167"

  }


  "Route-WVD-All" = {

    address_prefix = "10.237.1.0/24"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.219.0.167"

  }

    "Route_LG_TEST" = {

    address_prefix = "192.168.3.129/32"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.219.0.230"

  }

      "Route_LG_UAT" = {

    address_prefix = "192.168.3.130/32"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.219.0.230"

  }


}

tags = {


  "Application Owner" = "Daniel Stuart"
  "Application Name" = "CCS-CNS"
  "ENV" = "DEV"
  "RITM" = "000000"

}

