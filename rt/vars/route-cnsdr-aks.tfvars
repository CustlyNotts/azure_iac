
subscription_id     = <subscription_id>

resource_group = "rg-cnsdrhubnw"

name = "route-cnsdr-aks"

disable_bgp_route_propagation = false

routes = {


  "wvdall" = {

    address_prefix = "10.237.1.0/24"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.202.2.20"

  }

  "dtw-wvd" = {

    address_prefix = "10.237.5.0/24"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.202.2.20"

  }

  "LGCNSUAT" = {

    address_prefix = "10.201.224.9/32"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.202.2.20"

  }

  "Route-AVDDevOps" = {

    address_prefix = "10.237.12.0/25"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.202.2.20"

  }

  "route-drappgw" = {

    address_prefix = "10.222.15.0/24"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.202.2.20"

  }

  "LGN4VBS" = {

    address_prefix = "172.31.10.45/32"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.202.2.20"

  }

  "route-cp-p2svpngroup-172.16.20.0" = {

    address_prefix = "172.16.20.0/24"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.202.2.20"

  }

  "route-cnsdr-ilb" = {

    address_prefix = "172.21.21.0/28"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.202.2.20"

  }

  "LGPROD" = {

    address_prefix = "192.168.3.131/32"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.202.2.20"

  }


}

tags = {


  "Application Owner" = "Daniel/Sachin"

  "ENV" = "PROD"

  "Application Name" = "Mawani CNS"


}

