
subscription_id     = <subscription_id>

resource_group = "cnsnw"

name = "route-cnspri"

disable_bgp_route_propagation = false

routes = {


  "wvd-dtw" = {

    address_prefix = "10.237.5.0/24"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.202.0.116"

  }

  "route-lgcnsuat-10.201.224.9" = {

    address_prefix = "10.201.224.9/32"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.222.4.20"

  }

  "route-lgcnstest-10.201.224.5" = {

    address_prefix = "10.201.224.5/32"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.222.4.20"

  }

  "Route-N4-Prod" = {

    address_prefix = "192.168.3.131/32"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.202.0.20"

  }

  "Route_UAE_Manage_Engine" = {

    address_prefix = "10.254.7.14/32"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.202.0.116"

  }

  "Route_UAE_10.254.4.0" = {

    address_prefix = "10.254.4.0/24"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.202.0.116"

  }

  "Route-AVDDevOps" = {

    address_prefix = "10.237.12.0/25"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.202.0.116"

  }

  "route-cnsvpncheckpoint" = {

    address_prefix = "172.16.10.0/24"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.222.4.20"

  }

  "Route-WVD-All" = {

    address_prefix = "10.237.1.0/24"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.202.0.116"

  }


}

tags = {


  "project" = "mawani"

  "Application Owner" = "Daniel/Sachin"

  "Application Name" = "Mawani CNS"

  "region" = "uksouth"

  "customer" = "cns"

  "subscription" = "Mawani CNS"

  "ENV" = "PROD"

  "resource" = "vnet"

  "department" = "dtworld"


}

