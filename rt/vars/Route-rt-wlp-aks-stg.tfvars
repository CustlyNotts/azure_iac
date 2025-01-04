
subscription_id     = <subscription_id>

resource_group                = "rg-wlp-stage"

name                          = "rt-wlp-aks-stg"

disable_bgp_route_propagation = false

routes = {


    "Route_AVD_DTW" = {

        address_prefix         = "10.237.5.0/24"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.15.20"

    }
 
    "Route_Racher" = {

        address_prefix         = "10.237.1.31/32"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.1.7"

    }


}

tags                          = {


        "Application Owner" = "hussain.hashimi@dpworld.com"
 
        "ENV" = "STAGING"
 
        "Application Name" = "WLP stage"


}

