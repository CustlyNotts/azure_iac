
subscription_id     = <subscription_id>

resource_group_name = "rg-cns-infra-nonprod"

name = "Route-cns-dev"

disable_bgp_route_propagation = false

routes = {


  "wvd-dtw" = {

    address_prefix = "10.237.5.0/24"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.202.0.116"

  }

  "Route-vm-cnspreprod-mq" = {

    address_prefix = "172.22.0.0/19"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.202.0.20"

  }

  "Route_UAE_Manage_Engine" = {

    address_prefix = "10.254.7.14/32"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.202.0.116"

  }

  "Route-AVDDevOps" = {

    address_prefix = "10.237.12.0/25"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.202.0.116"

  }


  "Route-WVD-All" = {

    address_prefix = "10.237.1.0/24"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.202.0.116"

  }


}

tags = {


  "Application Owner" = "Daniel Stuart"

  "Application Name" = "CCS-CNS"

  "customer" = "cns"

  "subscription" = "Mawani CNS"

  "ENV" = "DEV"

}

