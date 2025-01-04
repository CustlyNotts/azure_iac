
subscription_id     = <subscription_id>

resource_group_name                = "Rgpoemseur"

name                          = "Route-poemseurprod"

disable_bgp_route_propagation = false

routes = {


    "internet" = {

        address_prefix         = "0.0.0.0/0"

        next_hop_type          = "Internet"

        #next_hop_in_ip_address = ""

    },
 
    "Route_UAE_SEC_DLP_ME_VA" = {

        address_prefix         = "10.254.4.4/32"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.202.0.116"

    },
 
    "Route_UAE_Shared_Security_Hub" = {

        address_prefix         = "10.254.0.0/16"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.202.0.20"

    },
 
    "Eur-VPN" = {

        address_prefix         = "172.16.202.0/24"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.202.0.20"

    },
 
    "Route_ME_UAE_Sechub" = {

        address_prefix         = "10.254.7.0/24"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.202.0.116"

    },
 
    "wvdall" = {

        address_prefix         = "10.237.1.0/24"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.202.0.116"

    },
 
    "Route_MFT_FTP" = {

        address_prefix         = "132.145.231.206/32"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.202.0.116"

    }


}

tags                          = {


        "Application Owner" = "Moinudeen AliAzad"
 
        "ENV" = "PROD"
 
        "Application Name" = "POEMS"


}

