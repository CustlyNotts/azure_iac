
subscription_id     = <subscription_id>

resource_group                = "rg-accounts-dr"

name                          = "Route-aksaccounts-preprod-dr"

disable_bgp_route_propagation = false

routes = {


    "Route_Rancher" = {

        address_prefix         = "10.237.1.31/32"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.1.20"

    }
 
    "VPN" = {

        address_prefix         = "172.16.8.0/22"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.1.7"

    }
 
    "AVD-DTW" = {

        address_prefix         = "10.237.5.0/24"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.15.20"

    }
 
    "WVDall" = {

        address_prefix         = "10.137.1.0/24"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.15.20"

    }
 
    "VMbuild" = {

        address_prefix         = "10.210.0.0/28"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.15.20"

    }


}

tags                          = {


        "Application Owner" = "Daniel Stuart/Linu Joseph/Pradeesh Raju"
 
        "ENV" = "DR"
 
        "Application Name" = "Accounts"


}

