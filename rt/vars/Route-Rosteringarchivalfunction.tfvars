
subscription_id     = <subscription_id>

resource_group_name                = "Rg-Vnet"

name                          = "Route-Rosteringarchivalfunction"

disable_bgp_route_propagation = false

routes = {


    "Route_SEC_CheckPoint_EDR" = {

        address_prefix         = "10.254.4.4/32"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.15.20"

    },
 
    "Route_UAE_SEC_DLP_ME_VA" = {

        address_prefix         = "10.254.7.0/24"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.15.20"

    },
 
    "vpn" = {

        address_prefix         = "172.16.8.0/22"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.1.7"

    }


}

tags                          = {


        "Application Owner" = "Hasaan Malik"
 
        "ENV" = "PROD"
 
        "Application Name" = "Rostima"


}

