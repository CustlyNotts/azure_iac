
subscription_id     = <subscription_id>

resource_group                = "rg-dga-customsapp"

name                          = "Route-DgaCustimapp"

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
 
    "Route-customapp-eastus-training" = {

        address_prefix         = "10.233.37.32/28"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.231.24.20"

    }
 
    "Route_SEC_CheckPoint_EDR" = {

        address_prefix         = "10.254.4.4/32"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.15.20"

    }
 
    "Debug" = {

        address_prefix         = "91.73.14.57/32"

        next_hop_type          = "Internet"

        next_hop_in_ip_address = ""

    }
 
    "wvd-dga" = {

        address_prefix         = "10.232.10.0/24"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.1.7"

    }
 
    "Internet" = {

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


        "Application Owner" = "Hussain "
 
        "ENV" = "DEV"
 
        "Application Name" = "DGA customs "


}

