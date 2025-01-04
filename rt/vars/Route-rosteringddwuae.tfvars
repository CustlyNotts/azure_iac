
subscription_id     = <subscription_id>

resource_group_name                = "Rgrosteringddwuae"

name                          = "Route-rosteringddwuae"

disable_bgp_route_propagation = false

routes = {


    "EDR_Checkpoint" = {

        address_prefix         = "10.254.4.4/32"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.15.20"

    },
 
    "vpn-route-hub" = {

        address_prefix         = "172.16.8.0/22"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.1.7"

    },
 
    "Route_UAE_SEC_DLP_ME_VA" = {

        address_prefix         = "10.254.7.0/24"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.15.20"

    },
 
    "wvdall" = {

        address_prefix         = "10.237.1.0/24"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.15.20"

    },
 
    "Route_Devbox_poems" = {

        address_prefix         = "10.7.5.0/24"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.201.0.116"

    }


}

tags                          = {


        "Application Owner" = "Moinudeen AliAzad"
 
        "ENV" = "PROD"
 
        "Application Name" = "POEMS"


}

