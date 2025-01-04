
subscription_id     = <subscription_id>

resource_group_name                = "rg-infra-nonprod"

name                          = "route-sailpoint-uat"

disable_bgp_route_propagation = false

routes = {


    "route-wvdall" = {

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
 
    "internet" = {

        address_prefix         = "0.0.0.0/0"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.15.20"

    }


}

tags = {
    "Application Owner" : "Gagandeep Singh",
    "ENV" : "UAT",
    "Application Name" : "Sailpoint",
    "RITM" : "RITM0098964"
}

