subscription_id     = <subscription_id>
resource_group                = "rg-cargoescanada-prod"
name                          = "Route-canadaprod-green"
disable_bgp_route_propagation = false
routes = {

    "Route-to-Canadanavis" = {
        address_prefix         = "10.42.3.3/32"
        next_hop_type          = "VirtualAppliance"
        next_hop_in_ip_address = "10.200.0.20"
    }    
     "wvdall" = {
        address_prefix         = "10.237.1.0/24"
        next_hop_type          = "VirtualAppliance"
        next_hop_in_ip_address = "10.200.0.116"
    }     
    "Route-to-SSRS" = {
        address_prefix         = "172.17.40.29/32"
        next_hop_type          = "VirtualAppliance"
        next_hop_in_ip_address = "10.200.0.20"
    }    
     "Route-to-NNO" = {
        address_prefix         = "172.17.4.0/26"
        next_hop_type          = "VirtualAppliance"
        next_hop_in_ip_address = "10.200.0.20"
    }    
     "Route_SEC_CheckPoint_EDR" = {
        address_prefix         = "10.254.4.4/32"
        next_hop_type          = "VirtualAppliance"
        next_hop_in_ip_address = "10.200.0.116"
    }    
     "Route_UAE_10.254.4.0" = {
        address_prefix         = "10.254.4.0/24"
        next_hop_type          = "VirtualAppliance"
        next_hop_in_ip_address = "10.200.0.116"
    }   
      "Route_AVD_DTW" = {
        address_prefix         = "10.237.5.0/24"
        next_hop_type          = "VirtualAppliance"
        next_hop_in_ip_address = "10.200.0.116"
    }   
      "Route_Datafactory_IR" = {
        address_prefix         = "10.220.1.7/32"
        next_hop_type          = "VirtualAppliance"
        next_hop_in_ip_address = "10.200.0.116"
    }  
       "Route-AVDDevOps" = {
        address_prefix         = "10.237.12.0/25"
        next_hop_type          = "VirtualAppliance"
        next_hop_in_ip_address = "10.200.0.116"
    }  
       "Route-to-canadanavisbilling" = {
        address_prefix         = "10.42.3.13/32"
        next_hop_type          = "VirtualAppliance"
        next_hop_in_ip_address = "10.200.0.20"
    }  
       "Route-STJ-Zod" = {
        address_prefix         = "10.122.100.0/24"
        next_hop_type          = "VirtualAppliance"
        next_hop_in_ip_address = "10.200.0.20"
    }    
     "Route_UAE_SEC_DLP_ME_VA" = {
        address_prefix         = "10.254.7.0/24"
        next_hop_type          = "VirtualAppliance"
        next_hop_in_ip_address = "10.200.0.116"
    }   
      "VPN-AMR" = {
        address_prefix         = "172.16.10.0/24"
        next_hop_type          = "VirtualAppliance"
        next_hop_in_ip_address = "10.200.0.20"
    }
}
tags = {
        "Application Owner" = "Daniel Stuart"    
        "ENV" = "PROD"         
        "Application Name" = "Cargoes Canada "
}
