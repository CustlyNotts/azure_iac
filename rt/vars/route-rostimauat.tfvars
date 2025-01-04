
subscription_id     = <subscription_id>

resource_group_name                = "Rg-Rostimauat"

name                          = "route-rostimauat"

disable_bgp_route_propagation = false

routes = {


    "Route_VPN" = {

        address_prefix         = "172.16.8.0/24"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.1.7"

    },
 
    "route-wvdall" = {

        address_prefix         = "10.237.1.0/24"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.1.7"

    },
 
    "Route_UAE_SEC_DLP_ME_VA" = {

        address_prefix         = "10.254.7.0/24"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.15.20"

    },
 
    "Route_Poems_Devbox" = {

        address_prefix         = "10.7.5.0/24"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.201.0.116"

    },
 
    "Route_EDR" = {

        address_prefix         = "10.254.4.4/32"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.15.20"

    },
 
    "internet" = {

        address_prefix         = "0.0.0.0/0"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.1.7"

    }


}

tags                          = {


        "Application Owner" = "Moinudeen AliAzad"
 
        "ENV" = "TESTING"
 
        "Application Name" = "Poems Application"


}

