﻿
subscription_id     = <subscription_id>

resource_group                = "cargoes-finance-staging"

name                          = "Route-FinanceSTG-1"

disable_bgp_route_propagation = False

routes = {


    "CargoesAPi" = {

        address_prefix         = "40.123.239.211/32"

        next_hop_type          = "Internet"

        next_hop_in_ip_address = ""

    }
 
    "Boomi-nonprod" = {

        address_prefix         = "10.151.4.0/22"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.15.20"

    }
 
    "RA-VPN" = {

        address_prefix         = "172.16.8.0/23"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.1.7"

    }
 
    "Route_UAE_SEC_DLP_ME_VA" = {

        address_prefix         = "10.254.7.0/24"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.15.20"

    }
 
    "route-finance-staging-cargoes-platform-green-staging" = {

        address_prefix         = "10.7.208.0/21"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.15.20"

    }
 
    "CargoesAPi-Dev" = {

        address_prefix         = "20.203.124.27/32"

        next_hop_type          = "Internet"

        next_hop_in_ip_address = ""

    }
 
    "Route_SEC_CheckPoint_EDR" = {

        address_prefix         = "10.254.4.4/32"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.15.20"

    }
 
    "Route_UAE_Manage_Engine" = {

        address_prefix         = "10.254.7.14/32"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.15.20"

    }
 
    "UTC-VPN" = {

        address_prefix         = "192.168.60.8/30"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.1.7"

    }
 
    "Internet" = {

        address_prefix         = "0.0.0.0/0"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.15.20"

    }


}

tags                          = {


        "Application Owner" = "Abhinav Sharma"
 
        "ENV" = "DEV"
 
        "Application Name" = "Cargoes Finance"


}

