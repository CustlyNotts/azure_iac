
subscription_id     = <subscription_id>

resource_group = "rg-cns-dev"

name = "route-cnsdev"

disable_bgp_route_propagation = false

routes = {


  "Route-vm-cargoes-jenkin-dev01" = {

    address_prefix = "10.233.0.6/32"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.202.0.116"

  }

  "route-cnstest-N4UAT" = {

    address_prefix = "192.168.3.130/32"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.202.0.20"

  }

  "route-cnsuat-10.201.224.9" = {

    address_prefix = "10.201.224.9/32"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.202.0.20"

  }

  "Route_UAE_Manage_Engine" = {

    address_prefix = "10.254.7.14/32"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.202.0.116"

  }

  "Route-WVD-All" = {

    address_prefix = "10.237.1.0/24"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.202.0.116"

  }

  "Route_cargoesLogisitics_dev" = {

    address_prefix = "10.242.0.0/19"

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

  "route-romania-uat" = {

    address_prefix = "192.168.240.226/32"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.202.0.20"

  }

  "Route_WVD_DTW" = {

    address_prefix = "10.237.5.0/24"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.202.0.116"

  }

  "route-cnstest-N4" = {

    address_prefix = "192.168.3.129/32"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.202.0.20"

  }

  "VPN" = {

    address_prefix = "172.16.10.0/24"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.202.0.20"

  }


}

tags = {


  "Application Owner" = "Daniel Stuart"

  "ENV" = "DEV"

  "RITM" = "RITM0042444"

  "Application Name" = "Mawani"


}

