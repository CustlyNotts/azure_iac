
subscription_id     = <subscription_id>

resource_group                = "rg-cnsdev"

name                          = "Route-cnsdev"

disable_bgp_route_propagation = false

routes = {


    "wvd-dtw" = {

        address_prefix         = "10.237.5.0/24"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.1.7"

    }
 
    "Route_UAE_SEC_DLP_ME_VA" = {

        address_prefix         = "10.254.7.0/24"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.15.20"

    }
 
    "vnet-cargoes-aap" = {

        address_prefix         = "10.233.0.0/27"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.1.7"

    }
 
    "VPN" = {

        address_prefix         = "172.16.8.0/22"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.1.7"

    }
 
    "route-cnsdev" = {

        address_prefix         = "10.210.112.0/20"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.1.7"

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
 
    "wvdall" = {

        address_prefix         = "10.237.1.0/24"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.15.20"

    }
 
    "WVD-Trafig" = {

        address_prefix         = "10.232.10.0/24"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.1.7"

    }


}

tags                          = {


        "Application Owner" = "Daniel Stuart / pradeesh raju"
 
        "ENV" = "DEV"
 
        "Application Name" = "Mawani CNS"


}

