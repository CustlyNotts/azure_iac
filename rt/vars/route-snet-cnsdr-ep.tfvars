
subscription_id     = <subscription_id>

resource_group = "rg-cnsdr"

name = "route-snet-cnsdr-ep"

disable_bgp_route_propagation = true

routes = {


  "DTW-AVD" = {

    address_prefix = "10.237.5.0/24"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.202.2.20"

  }

  "N4UAT" = {

    address_prefix = "192.168.3.130/32"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.202.2.20"

  }

  "N4TEST" = {

    address_prefix = "192.168.3.129/32"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.202.2.20"

  }

  "route-checkpointp2svpn-172.16.20.0" = {

    address_prefix = "172.16.20.0/24"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.222.14.20"

  }

  "LGN4VBS" = {

    address_prefix = "172.31.10.45/32"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.202.2.20"

  }

  "LGcnsUat" = {

    address_prefix = "10.201.224.9/32"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.202.2.20"

  }

  "LGPROD" = {

    address_prefix = "192.168.3.131/32"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.202.2.20"

  }

  "route-wvd-all" = {

    address_prefix = "10.237.1.0/24"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.202.2.20"

  }


}

tags = {


  "Application Owner" = "Daniel/Sachin"

  "ENV" = "DR"

  "RITM" = "RITM123456"

  "Application Name" = "Mawani CNS"


}

