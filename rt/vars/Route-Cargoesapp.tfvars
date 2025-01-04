
subscription_id     = <subscription_id>

resource_group                = "rg-cargoes-app"

name                          = "Route-Cargoesapp"

disable_bgp_route_propagation = false

routes = {


    "wvd-dtw" = {

        address_prefix         = "10.237.5.0/24"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.1.7"

    }
 
    "route-wvdall" = {

        address_prefix         = "10.237.1.0/24"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.1.7"

    }
 
    "vnet-cnsdev" = {

        address_prefix         = "172.16.20.0/22"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.1.7"

    }
 
    "Route-vm-cnsdevops" = {

        address_prefix         = "172.22.136.21/32"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.202.0.116"

    }
 
    "Route_SEC_CheckPoint_EDR" = {

        address_prefix         = "10.254.4.4/32"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.15.20"

    }
 
    "Route_UAE_SEC_DLP_ME_VA" = {

        address_prefix         = "10.254.7.0/24"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.15.20"

    }
 
    "wvd-dga" = {

        address_prefix         = "10.232.10.0/24"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.1.7"

    }
 
    "db-cargoes-postgres-uat02" = {

        address_prefix         = "65.52.248.0/32"

        next_hop_type          = "Internet"

        next_hop_in_ip_address = ""

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


        "Application Owner" = "hussain.hashimi@dpworld.com"
 
        "ENV" = "DEV"
 
        "Application Name" = "Cargoes app"


}

