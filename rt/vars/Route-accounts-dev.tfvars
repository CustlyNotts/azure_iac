
subscription_id     = <subscription_id>
resource_group                = "rg-account-dev"
name                          = "Route-accounts-dev"
disable_bgp_route_propagation = false
routes = {
    "vnet-build" = {
        address_prefix         = "10.210.0.0/28"
        next_hop_type          = "VirtualAppliance"
        next_hop_in_ip_address = "10.254.1.7"
    }
 
    "Route_UAE_SEC_DLP_ME_VA" = {
        address_prefix         = "10.254.7.0/24"
        next_hop_type          = "VirtualAppliance"
        next_hop_in_ip_address = "10.254.15.20"
    }
 
    "route-AVD-DTW" = {
        address_prefix         = "10.237.5.0/24"
        next_hop_type          = "VirtualAppliance"
        next_hop_in_ip_address = "10.254.15.20"
    }

    "Route_SEC_CheckPoint_EDR" = {
        address_prefix         = "10.254.4.4/32"
        next_hop_type          = "VirtualAppliance"
        next_hop_in_ip_address = "10.254.15.20"
    }
 
    "Route-AVDDevOps" = {
        address_prefix         = "10.237.12.0/25"
        next_hop_type          = "VirtualAppliance"
        next_hop_in_ip_address = "10.254.15.20"
    }
 
    "internet" = {
        address_prefix         = "0.0.0.0/0"
        next_hop_type          = "VirtualAppliance"
        next_hop_in_ip_address = "10.254.1.7"
    }
 
    "VPN" = {
        address_prefix         = "172.16.8.0/22"
        next_hop_type          = "VirtualAppliance"
        next_hop_in_ip_address = "10.254.1.7"
    }

}

tags                          = {


        "Application Owner" = "Daniel Stuart"
 
        "ENV" = "DEV"
 
        "Application Name" = "Mawani CNS"


}

