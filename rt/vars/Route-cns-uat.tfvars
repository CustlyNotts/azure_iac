
subscription_id     = <subscription_id>

resource_group = "rg-cns-infra-nonprod"

name = "Route-cns-uat"

disable_bgp_route_propagation = false

routes = {

  "Route_UAE_Manage_Engine" = {

    address_prefix = "10.254.7.14/32"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.202.0.116"

  }

  "EDR_Checkpoint" = {

    address_prefix = "10.254.4.4/32"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.254.15.20"

  }

  "vm-pt-DTW" = {

    address_prefix = "10.156.9.5/32"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.202.0.116"

  }

  "route-N4-LG-test" = {

    address_prefix = "192.168.3.129/32"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.219.0.230"

  }

  "wvd-dtw" = {

    address_prefix = "10.237.5.0/24"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.202.0.116"

  }


  "VM-pt-ecom" = {

    address_prefix = "10.165.86.4/32"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.202.0.116"

  }

  "Route-AVDDevOps" = {

    address_prefix = "10.237.12.0/25"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.202.0.116"

  }

  "vm-pt-canada-amr" = {

    address_prefix = "10.222.254.4/32"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.200.0.116"

  }

  "Route-cargoesloadGenPT" = {

    address_prefix = "10.240.224.233/32"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.254.15.20"

  }

  "route-N4-LG-UAT" = {

    address_prefix = "192.168.3.130/32"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.219.0.230"

  }

  "VM-PT-BT" = {

    address_prefix = "10.222.32.132/32"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.202.0.116"

  }

  "Route-WVD-All" = {

    address_prefix = "10.237.1.0/24"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.202.0.116"

  }


}

tags = {


  "Application Owner" = "Daniel/Sachin"

  "ENV" = "UAT"

  "Application Name" = "Mawani CNS"


}

