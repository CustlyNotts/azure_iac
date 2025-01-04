
subscription_id     = <subscription_id>

resource_group = "rg-cnsdrhubnw"

name = "route-cnsdr"

disable_bgp_route_propagation = false

routes = {


  "route-cnsdr-aks" = {

    address_prefix = "172.21.0.0/20"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.202.2.20"

  }

  "route-draks-ilb" = {

    address_prefix = "172.21.21.0/28"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.202.2.20"

  }

  "route-cnspreprod-dr-172.21.24.0" = {

    address_prefix = "172.21.24.0/21"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.202.2.20"

  }


}

tags = {


  "Application Owner" = "Daniel/Sachin"

  "ENV" = "PROD"

  "Application Name" = "Mawani CNS"


}

