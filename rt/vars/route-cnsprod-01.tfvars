
subscription_id     = <subscription_id>

resource_group = "rg-cnsprod"

name = "route-cnsprod-01"

disable_bgp_route_propagation = false

routes = {


  "route-lg-10.201.128.220" = {

    address_prefix = "10.201.128.220/32"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.222.4.20"

  }

  "route-lgcnsuat-10.201.224.9" = {

    address_prefix = "10.201.224.9/32"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.222.4.20"

  }

  "route-cnsprod-fw2" = {

    address_prefix = "10.222.4.5/32"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.222.4.20"

  }

  "route-appgw" = {

    address_prefix = "10.222.13.0/24"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.222.4.20"

  }

  "route-lgcnstest-10.201.224.5" = {

    address_prefix = "10.201.224.5/32"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.222.4.20"

  }

  "route-cnsprod-ilb" = {

    address_prefix = "172.22.137.0/28"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.222.4.20"

  }

  "route-cnsprod-fw1" = {

    address_prefix = "10.222.4.4/32"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.222.4.20"

  }

  "route-lg-172.31.10.60" = {

    address_prefix = "172.31.10.60/32"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.222.4.20"

  }

  "route-cns-10.150.64.12" = {

    address_prefix = "10.150.64.12/32"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.222.4.20"

  }

  "route-cns-10.150.64.11" = {

    address_prefix = "10.150.64.11/32"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.222.4.20"

  }

  "route-lgn4-172.31.10.45" = {

    address_prefix = "172.31.10.45/32"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.222.4.20"

  }


}


tags = {
  "Application Name"  = "Mawani CNS"
  "Application Owner" = "Daniel/Sachin"
  "ENV"               = "PROD"
  "RITM"              = "RITM12346"

}

    