
subscription_id     = <subscription_id>

resource_group                = "Rg-Vnet"

name                          = "route-perftest"

disable_bgp_route_propagation = false

routes = {


    "EDR_Checkpoint" = {

        address_prefix         = "10.254.4.4/32"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.15.20"

    }
 
    "Route_RA_VPN" = {

        address_prefix         = "172.16.8.0/23"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.1.7"

    }
 
    "AVD_DTW" = {

        address_prefix         = "10.237.5.0/24"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.15.20"

    }
 
    "route-DTworld-vm-pt-lg" = {

        address_prefix         = "172.22.33.49/32"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.202.0.116"

    }
 
    "Route-cargoesloadGen-PT" = {

        address_prefix         = "10.240.224.233/32"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.15.20"

    }
 
    "QA_DevOps_WVD" = {

        address_prefix         = "10.237.12.4/32"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.15.20"

    }
 
    "Route-DTworld-cc-canada" = {

        address_prefix         = "10.222.254.4/32"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.200.0.116"

    }
 
    "globalwvdall" = {

        address_prefix         = "10.237.1.0/24"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.1.7"

    }
 
    "Route-pt-UAE" = {

        address_prefix         = "10.165.86.4/32"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.15.20"

    }
 
    "route-Dtworld-BT-pt-lg" = {

        address_prefix         = "10.222.32.132/32"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.222.32.20"

    }
 
    "Route_UAE_SEC_DLP_ME_VA" = {

        address_prefix         = "10.254.7.0/24"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.15.20"

    }
 
    "vmcargoesloadgenerator" = {

        address_prefix         = "10.213.10.6/32"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.1.7"

    }
 
    "internet" = {

        address_prefix         = "0.0.0.0/0"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.1.7"

    }


}

tags                          = {


        "Application Owner" = "Shaloof /Nowphal"
 
        "ENV" = "PROD"
 
        "RITM" = "RITM0027920"
 
        "Application Name" = "Utilities"


}

