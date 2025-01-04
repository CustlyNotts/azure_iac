subscription_id     = <subscription_id>
resource_group                = "rg-cnspreprod-dr"
name                          = "route-cnspreprod-dr"
disable_bgp_route_propagation = true
routes = {


  "VPN_Route_vbscnsuat" = {

    address_prefix = "10.201.224.9/32"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.202.2.20"

  }

  "route-cnswinjum-10.222.4.37" = {

    address_prefix = "10.222.4.37/32"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.222.14.20"

  }

  "route-vm-supportjmp-dr-172.22.3.19" = {

    address_prefix = "172.22.3.19/32"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.222.14.20"

  }

  "route-DTW-WVD" = {

    address_prefix = "10.237.5.0/24"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.202.2.20"

  }

  "N4UAT" = {

    address_prefix = "192.168.3.130/32"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.202.2.20"

  }

  "route-wvd-all" = {

    address_prefix = "10.237.1.0/24"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.202.2.20"

  }

  "route-checkpointp2svpn-172.16.20.0" = {

    address_prefix = "172.16.20.0/24"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.222.14.20"

  }

  "LGprod" = {

    address_prefix = "192.168.3.131/32"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.202.2.20"

  }

  "N4Test" = {

    address_prefix = "192.168.3.129/32"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.202.2.20"

  }

  "VPN_Route_LGN4" = {

    address_prefix = "172.31.10.45/32"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.202.2.20"

  }

  "route-cnsdrappgw-10.222.15.0" = {

    address_prefix = "10.222.15.0/24"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.202.2.20"

  }


}

tags = {


  "Application Owner" = "Daniel Stuart"

  "ENV" = "UAT"

  "Application Name" = "Mawani CNS"


}

