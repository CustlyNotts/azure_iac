
subscription_id     = <subscription_id>

resource_group                = "rg-wlp-dev"

name                          = "Route-Wlp-Dev"

disable_bgp_route_propagation = false

routes = {


    "Route_Rancher" = {

        address_prefix         = "10.237.1.31/32"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.1.7"

    }
 
    "Route_10.237.5.0-24" = {

        address_prefix         = "10.237.5.0/24"

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
 
    "DubaiTrade" = {

        address_prefix         = "194.170.213.246/32"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.15.20"

    }


}

tags                          = {


        "Application Owner" = "hussain.hashimi@dpworld.com"
 
        "ENV" = "DEV"
 
        "Application Name" = "WLP DEV"


}

