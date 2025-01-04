
subscription_id     = <subscription_id>

resource_group                = "rg-wlp-prod"

name                          = "Route-Wlp-Prod"

disable_bgp_route_propagation = false

routes = {


    "Route_UAE_SEC_DLP_ME_VA" = {

        address_prefix         = "10.254.7.0/24"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.15.20"

    }
 
    "Route_AVD_DTW" = {

        address_prefix         = "10.237.5.0/24"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.15.20"

    }
 
    "WLP_Dev_Traffic" = {

        address_prefix         = "10.233.80.0/20"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.1.7"

    }
 
    "dga-wvd-wlp" = {

        address_prefix         = "10.232.10.0/24"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.1.7"

    }
 
    "wvdall" = {

        address_prefix         = "10.237.1.0/24"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.1.7"

    }
 
    "Route_SEC_CheckPoint_EDR" = {

        address_prefix         = "10.254.4.4/32"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.15.20"

    }
 
    "VPN" = {

        address_prefix         = "172.16.8.0/22"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.1.7"

    }


}

tags                          = {


        "Application Owner" = "hussain.hashimi@dpworld.com"
 
        "ENV" = "PROD"
 
        "Application Name" = "WLP prod"


}

