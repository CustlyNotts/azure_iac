
subscription_id     = <subscription_id>

resource_group = "rg-checkpointmgmt"

name = "route-cnsvpncheckpoint"

disable_bgp_route_propagation = false

routes = {


  "Route_UAE_Manage_Engine" = {

    address_prefix = "10.254.7.0/24"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.202.0.116"

  }

  "route-cnspreprod-dr-172.21.24.0" = {

    address_prefix = "172.21.24.0/21"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.222.14.20"

  }

  "route-cnsbuild-172.22.2.52" = {

    address_prefix = "10.232.10.0/24"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.222.4.20"

  }

  "route-vnet-wvd-01" = {

    address_prefix = "172.23.0.0/28"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.222.4.20"

  }

  "route-romania-uat" = {

    address_prefix = "192.168.240.226/32"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.202.0.20"

  }

  "Route-vm-cnspreprod-mq" = {

    address_prefix = "172.22.132.0/22"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.202.0.20"

  }

  "Route_UAE_10.254.4.0" = {

    address_prefix = "10.254.4.0/24"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.202.0.116"

  }

  "route-cnsvpncheckpoint01" = {

    address_prefix = "172.16.10.0/24"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.222.4.20"

  }

  "route-romania-prod" = {

    address_prefix = "192.168.240.50/32"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.202.0.20"

  }

  "route-lg-solarwinds-10.201.128.220" = {

    address_prefix = "10.201.128.220/32"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.222.4.20"

  }

  "Route-vm-cargoes-jenkin-dev01" = {

    address_prefix = "10.233.0.6/32"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.202.0.116"

  }

  "Route-AVDDevOps" = {

    address_prefix = "10.237.12.0/25"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.202.0.116"

  }

  "Route_WVD_DTW" = {

    address_prefix = "10.237.5.0/24"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.202.0.116"

  }

  "route-snet-cnsdr-ep" = {

    address_prefix = "172.21.20.0/24"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.222.14.20"

  }

  "route-cnsuat-10.201.224.9" = {

    address_prefix = "10.201.224.9/32"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.202.0.20"

  }

  "route-cnstest-N4UAT" = {

    address_prefix = "192.168.3.130/32"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.202.0.20"

  }

  "route-wvd-all" = {

    address_prefix = "10.237.1.0/24"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.202.0.116"

  }

  "route-cnstest-N4" = {

    address_prefix = "192.168.3.129/32"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.202.0.20"

  }


}

tags = {


  "Application Owner" = "Daniel/Sachin"

  "ENV" = "PROD"

  "Application Name" = "Mawani CNS"


}

