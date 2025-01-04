
subscription_id     = <subscription_id>

resource_group_name                = "Rg-Rostima-DR"

name                          = "Route_Rostima_DR"

disable_bgp_route_propagation = false

routes = {


    "Newrelic6" = {

        address_prefix         = "104.97.76.184/32"

        next_hop_type          = "Internet"

        #next_hop_in_ip_address = ""

    },
 
    "EUR_VPN" = {

        address_prefix         = "172.16.8.0/22"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.1.7"

    },
 
    "Newrelic4" = {

        address_prefix         = "161.156.125.32/28"

        next_hop_type          = "Internet"

        #next_hop_in_ip_address = ""

    },
 
    "Newrelic1" = {

        address_prefix         = "185.221.86.57/32"

        next_hop_type          = "Internet"

        #next_hop_in_ip_address = ""

    },
 
    "Newrelic2" = {

        address_prefix         = "185.221.86.25/32"

        next_hop_type          = "Internet"

        #next_hop_in_ip_address = ""

    },
 
    "rt-glb-wvdall" = {

        address_prefix         = "10.237.1.0/24"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.202.0.116"

    },
 
    "Newrelic3" = {

        address_prefix         = "158.177.65.64/29"

        next_hop_type          = "Internet"

        #next_hop_in_ip_address = ""

    },
 
    "newrelic" = {

        address_prefix         = "185.221.84.0/22"

        next_hop_type          = "Internet"

        #next_hop_in_ip_address = ""

    },
 
    "Route_devbox_poems" = {

        address_prefix         = "10.7.5.0/24"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.201.0.116"

    },
 
    "Newrelic7" = {

        address_prefix         = "162.247.240.0/22"

        next_hop_type          = "Internet"

        #next_hop_in_ip_address = ""

    },
 
    "Internet" = {

        address_prefix         = "0.0.0.0/0"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.202.0.116"

    },
 
    "Newrelic5" = {

        address_prefix         = "199.232.45.27/32"

        next_hop_type          = "Internet"

        #next_hop_in_ip_address = ""

    }


}

tags                          = {


        "Application Owner" = "Moinudeen AliAzad"
 
        "ENV" = "PROD"
 
        "Application Name" = "Poems Application"


}

