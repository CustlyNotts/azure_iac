
subscription_id     = <subscription_id>

resource_group = "rg-cnsprihubnw"

name = "route-cnspri-appgw"

disable_bgp_route_propagation = false

routes = {


  "route-cnsprod-aks" = {

    address_prefix = "172.22.96.0/19"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.222.4.20"

  }

  "route-cnspreprod-aks" = {

    address_prefix = "172.22.132.0/22"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.222.4.20"

  }

  "route-preprodaks-ilb" = {

    address_prefix = "172.22.137.16/28"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.222.4.20"

  }

  "route-cnsprod-ilb" = {

    address_prefix = "172.22.137.0/28"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.222.4.20"

  }


}

tags = {


  "Application Owner" = "Daniel/Sachin"

  "ENV" = "PROD"

  "Application Name" = "Mawani CNS"


}

