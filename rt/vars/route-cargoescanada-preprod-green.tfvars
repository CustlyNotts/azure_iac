subscription_id     = <subscription_id>
resource_group                = "rg-cargoescanada-preprod"
name                          = "route-cargoescanada-preprod-green"
disable_bgp_route_propagation = false

routes = {
    "Route_SEC_CheckPoint_EDR" = {
        address_prefix         = "10.254.4.4/32"
        next_hop_type          = "VirtualAppliance"
        next_hop_in_ip_address = "10.200.0.116"
    }    
     "wvdall" = {
        address_prefix         = "10.237.1.0/24"
        next_hop_type          = "VirtualAppliance"
        next_hop_in_ip_address = "10.200.0.116"
    }    
     "Route_UAE_10.254.4.0" = {
        address_prefix         = "10.254.4.0/24"
        next_hop_type          = "VirtualAppliance"
        next_hop_in_ip_address = "10.200.0.116"
    }   
      "Route-STJ-Zodiac" = {
        address_prefix         = "10.122.100.0/24"
        next_hop_type          = "VirtualAppliance"
        next_hop_in_ip_address = "10.200.0.20"
    }   
      "route-AVD-DTW" = {
        address_prefix         = "10.237.5.0/24"
        next_hop_type          = "VirtualAppliance"
        next_hop_in_ip_address = "10.200.0.116"
    }   
      "VPN" = {
        address_prefix         = "172.16.10.0/24"
        next_hop_type          = "VirtualAppliance"
        next_hop_in_ip_address = "10.200.0.20"
    }   
      "snet-core-stg" = {
        address_prefix         = "10.222.248.0/22"
        next_hop_type          = "VirtualAppliance"
        next_hop_in_ip_address = "10.200.0.116"
    }   
      "Route-AVDDevOps" = {
        address_prefix         = "10.237.12.0/25"
        next_hop_type          = "VirtualAppliance"
        next_hop_in_ip_address = "10.200.0.116"
    }   
      "Route-to-Canadanavis" = {
        address_prefix         = "10.41.2.0/24"
        next_hop_type          = "VirtualAppliance"
        next_hop_in_ip_address = "10.200.0.6"
    }   
      "Route-STJ-Zod" = {
        address_prefix         = "10.122.200.0/24"
        next_hop_type          = "VirtualAppliance"
        next_hop_in_ip_address = "10.200.0.20"
    }   
      "Route_UAE_SEC_DLP_ME_VA" = {
        address_prefix         = "10.254.7.0/24"
        next_hop_type          = "VirtualAppliance"
        next_hop_in_ip_address = "10.200.0.116"
    }   
      "Route-NNO-Zod" = {
        address_prefix         = "172.17.4.0/26"
        next_hop_type          = "VirtualAppliance"
        next_hop_in_ip_address = "10.200.0.20"
    }   
      "Internet" = {
        address_prefix         = "0.0.0.0/0"
        next_hop_type          = "VirtualAppliance"
        next_hop_in_ip_address = "10.200.0.20"
    }
}
tags = {
            "Application Name"  = "Mawani CNS"
            "Application Owner" = "Daniel Stuart"
            "ENV"               = "PROD"
}
