
subscription_id     = <subscription_id>

resource_group_name                = "Rg-Rostimadev"

name                          = "route-rostimadev"

disable_bgp_route_propagation = false

routes = {


    "wvdall-rostimadev" = {

        address_prefix         = "10.237.1.0/24"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.15.20"

    }
 
    "Route_UAE_SEC_DLP_ME_VA" = {

        address_prefix         = "10.254.7.0/24"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.15.20"

    }
 
    "Route_SEC_CheckPoint_EDR" = {

        address_prefix         = "10.254.4.4/32"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.15.20"

    }
 
    "Route_Poems_Functions" = {

        address_prefix         = "10.154.18.0/24"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.15.20"

    }
 
    "Route_Devbox_Peoms" = {

        address_prefix         = "10.7.5.0/24"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.201.0.116"

    }
 
    "internet" = {

        address_prefix         = "0.0.0.0/0"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.1.7"

    }


}

tags                          = {


        "Application Owner" = "Moinudeen AliAzad"
 
        "ENV" = "DEV"
 
        "Application Name" = "Poems Application"


}

