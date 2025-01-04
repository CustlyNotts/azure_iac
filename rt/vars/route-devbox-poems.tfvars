
subscription_id     = <subscription_id>

resource_group_name              = "rg-devbox-poems"

name                          = "route-devbox-poems"

disable_bgp_route_propagation = false

routes = {


    "Route_WindowsAdminCenter" = {

        address_prefix         = "WindowsAdminCenter"

        next_hop_type          = "Internet"

        #next_hop_in_ip_address = ""

    },

    "Route_Berthplanning_prod" = {

        address_prefix         = "10.187.4.0/25"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.201.0.116"

    },

    "Route_Berthplanning_stg" = {

        address_prefix         = "10.187.0.0/25"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.201.0.116"

    },
 
    "Route_UAE_SEC_DLP_ME_VA" = {

        address_prefix         = "10.254.7.0/24"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.201.0.116"

    },
 
    "Route_AzureAVD" = {

        address_prefix         = "WindowsVirtualDesktop"

        next_hop_type          = "Internet"

        #next_hop_in_ip_address = ""

    },

    "Route_CRS_AMR" = {

        address_prefix         = "10.154.24.0/22"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.201.0.116"

    },
 
    "Route_SEC_CheckPoint_EDR" = {

        address_prefix         = "10.254.4.4/32"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.201.0.116"

    },
 
    "Route_Rostima_DR" = {

        address_prefix         = "10.154.16.0/25"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.201.0.116"

    },
 
    "Route_update_Manager" = {

        address_prefix         = "AzureDeviceUpdate"

        next_hop_type          = "Internet"

        #next_hop_in_ip_address = ""

    },
 
    "Route_Rostima_p2" = {

        address_prefix         = "10.154.17.0/24"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.201.0.116"

    },
 
    "Route_rostima_p1" = {

        address_prefix         = "10.154.4.0/22"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.201.0.116"

    }
 
    "internet" = {

        address_prefix         = "0.0.0.0/0"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.201.0.116"

    }


}

tags                          = {


        "Application Owner" = "Moinudeen Aliazad"
 
        "ENV" = "PROD"
 
        "RITM" = "RITM00000000"
 
        "Application Name" = "devbox poems"


}

