
subscription_id     = <subscription_id>

resource_group = "rg-cnspreprod"

name = "route-cnspreprod-01"

disable_bgp_route_propagation = false

routes = {


  "route-appgw" = {

    address_prefix = "10.222.13.0/24"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.222.4.20"

  }

  "route-preprodaks-ilb" = {

    address_prefix = "172.22.137.16/28"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.222.4.20"

  }

  "route-cnsvpncheckpoint" = {

    address_prefix = "172.16.10.0/24"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.222.4.20"

  }

  "route-to-cnsonprem_172.31.10.60" = {

    address_prefix = "172.31.10.60/32"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.222.4.20"

  }

  "route-internet" = {

    address_prefix = "0.0.0.0/0"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.222.4.20"

  }


}

tags = {


  "Application Owner" = "Daniel/Sachin"

  "ENV" = "DEV"

  "Application Name" = "Mawani CNS"


}

