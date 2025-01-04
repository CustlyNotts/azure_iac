
subscription_id     = <subscription_id>

resource_group = "rg-checkpointmgmt"

name = "route-cnscp-syslog-to-vnetsechub"

disable_bgp_route_propagation = false

routes = {


  "route-cnspreprod-dr-172.21.24.0" = {

    address_prefix = "172.21.24.0/21"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.222.14.20"

  }

  "route-lgside-n4-172.31.10.45" = {

    address_prefix = "172.31.10.45/32"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.222.4.20"

  }

  "Route-to-WVD-All" = {

    address_prefix = "10.237.1.0/24"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.222.4.20"

  }

  "routelg-172.31.10.60" = {

    address_prefix = "172.31.10.60/32"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.222.4.20"

  }

  "Route-all-UAE-sharedsechub" = {

    address_prefix = "10.254.0.0/16"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.222.4.20"

  }

  "route-cnspreprod-dr-172.21.20.6" = {

    address_prefix = "172.21.20.6/32"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.222.14.20"

  }

  "route-cnsp2svpn" = {

    address_prefix = "172.16.10.0/24"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.222.4.20"

  }

  "route-windwsjumdr-172.21.22.4" = {

    address_prefix = "172.21.22.4/32"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.222.4.20"

  }

  "route-lg-10.201.224.5" = {

    address_prefix = "10.201.224.5/32"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.222.4.20"

  }

  "route-lg-10.201.224.9" = {

    address_prefix = "10.201.224.9/32"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.222.4.20"

  }

  "route-sentinel-slog" = {

    address_prefix = "10.254.7.10/32"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.222.4.20"

  }

  "route-sentinel-ioc" = {

    address_prefix = "10.254.7.4/32"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.222.4.20"

  }

  "Route_AD" = {

    address_prefix = "10.254.9.0/24"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.222.4.20"

  }


}

tags = {


  "Application Owner" = "Daniel/Sachin"

  "ENV" = "PROD"

  "Application Name" = "Mawani CNS"


}

