
subscription_id     = <subscription_id>

resource_group                = "rg-wvd-dtw"

name                          = "route-wvd-dtw"

disable_bgp_route_propagation = false

routes = {


    "route-custapp1" = {

        address_prefix         = "10.233.8.0/21"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.1.7"

    }
 
    "vnet-bt-dr" = {

        address_prefix         = "172.17.0.0/16"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.222.34.20"

    }
 
    "AVD-ServiceTags-KMS" = {

        address_prefix         = "23.102.135.246/32"

        next_hop_type          = "Internet"

        next_hop_in_ip_address = ""

    }
 
    "Route_snet-common-mea-prod" = {

        address_prefix         = "10.170.105.0/24"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.15.20"

    }
 
    "vnet-accounts-dr" = {

        address_prefix         = "10.214.0.0/20"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.15.20"

    }
 
    "cns-snet-mysql-commonflex-prod" = {

        address_prefix         = "172.22.138.0/27"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.202.0.116"

    }
 
    "Route-cnsUAT" = {

        address_prefix         = "172.22.32.0/19"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.202.0.116"

    }
 
    "Route_10.233.80.0-20" = {

        address_prefix         = "10.233.80.0/20"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.15.20"

    }
 
    "route-cargoescanada-test" = {

        address_prefix         = "10.222.248.0/21"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.200.0.116"

    }
 
    "Route_UAE_SEC_DLP_ME_VA" = {

        address_prefix         = "10.254.7.0/24"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.15.20"

    }
 
    "route-to-snetsftp" = {

        address_prefix         = "172.22.176.0/24"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.202.0.116"

    }
 
    "route-vnet-global-nonprod" = {

        address_prefix         = "10.170.160.0/19"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.15.20"

    }
 
    "Route-Rundeck-NonProd" = {

        address_prefix         = "10.223.16.17/32"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.222.32.20"

    }
 
    "Route_Berbera_UAT" = {

        address_prefix         = "10.10.100.233/32"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.1.7"

    }
 
    "route-custapps2" = {

        address_prefix         = "10.233.2.0/23"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.1.7"

    }
 
    "route-dgawvd-dc" = {

        address_prefix         = "172.17.84.55/32"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.1.7"

    }
 
    "Route_cargoescanadastg" = {

        address_prefix         = "10.210.24.0/21"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.200.0.116"

    }
 
    "Route-CNS-Dev" = {

        address_prefix         = "10.222.72.0/22"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.1.7"

    }
 
    "AVD-ServiceTags-WindowsVirtualDesktop" = {

        address_prefix         = "WindowsVirtualDesktop"

        next_hop_type          = "Internet"

        next_hop_in_ip_address = ""

    }
 
    "cnsdev" = {

        address_prefix         = "10.210.112.0/20"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.1.7"

    }
 
    "Route-cargoescanada-build" = {

        address_prefix         = "10.210.0.16/28"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.200.0.116"

    }
 
    "AVD-ServiceTags-AzureKMS" = {

        address_prefix         = "20.118.99.224/32"

        next_hop_type          = "Internet"

        next_hop_in_ip_address = ""

    }
 
    "DTW-Corestg" = {

        address_prefix         = "172.16.0.0/21"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.202.0.116"

    }
 
    "route-CRR" = {

        address_prefix         = "20.46.152.46/32"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.15.20"

    }
 
    "route-cnsdr" = {

        address_prefix         = "172.21.0.0/19"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.202.2.20"

    }
 
    "accounts-prepord-dr" = {

        address_prefix         = "10.215.0.0/20"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.15.20"

    }
 
    "sechub" = {

        address_prefix         = "10.254.0.0/16"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.1.7"

    }
 
    "Route-btnwhub" = {

        address_prefix         = "10.223.0.0/16"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.222.32.20"

    }
 
    "wvd-bastion" = {

        address_prefix         = "10.233.101.32/28"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.1.7"

    }
 
    "wvd-wlp-wlp" = {

        address_prefix         = "10.233.117.32/28"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.1.7"

    }
 
    "route-dgacustapps" = {

        address_prefix         = "10.233.16.0/20"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.231.24.20"

    }
 
    "Route-vnet-core-stg" = {

        address_prefix         = "10.222.240.0/21"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.15.20"

    }
 
    "route-dga-customsapp-training-bastion-eastus" = {

        address_prefix         = "10.233.37.32/28"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.231.24.20"

    }
 
    "Route-snet-aksnode-cns-dev" = {

        address_prefix         = "172.22.192.0/24"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.202.0.116"

    }
 
    "route-vnet-ccsdev-nonprod" = {

        address_prefix         = "10.0.8.0/21"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.15.20"

    }
 
    "Route_SEC_CheckPoint_EDR" = {

        address_prefix         = "10.254.4.4/32"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.15.20"

    }
 
    "Route_canadarundeck-prod" = {

        address_prefix         = "10.210.128.170/32"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.200.0.116"

    }
 
    "Route-Mawani" = {

        address_prefix         = "172.22.0.0/16"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.202.0.116"

    }
 
    "Route_RunDeck_Prod" = {

        address_prefix         = "10.210.128.168/32"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.200.0.116"

    }
 
    "Route_vnet-wlp-stage_10.233.96.0-20" = {

        address_prefix         = "10.233.96.0/20"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.15.20"

    }
 
    "AVD-ServiceTags-AzureKMS01" = {

        address_prefix         = "40.83.235.53/32"

        next_hop_type          = "Internet"

        next_hop_in_ip_address = ""

    }
 
    "cargoes-customs" = {

        address_prefix         = "10.155.0.0/16"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.1.7"

    }
 
    "Route-CNSPreprod" = {

        address_prefix         = "172.22.144.0/20"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.202.0.116"

    }
 
    "route-dgacustappseus" = {

        address_prefix         = "10.233.48.0/20"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.231.24.20"

    }
 
    "cargoscanada-prod" = {

        address_prefix         = "10.210.128.0/20"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.200.0.116"

    }
 
    "route-cargoescustoms-prod" = {

        address_prefix         = "10.146.32.0/19"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.15.20"

    }
 
    "Route-LCIT-prod" = {

        address_prefix         = "10.170.32.0/19"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.201.0.116"

    }
 
    "route-cargoescustoms-svc-prod" = {

        address_prefix         = "10.146.64.0/19"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.15.20"

    }
 
    "Route_Berbera-Prod" = {

        address_prefix         = "10.10.100.147/32"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.1.7"

    }
 
    "route-vnet-btnw-snet-btuat-172.22.8.0" = {

        address_prefix         = "172.22.0.0/19"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.202.0.116"

    }
 
    "route-cargoescustoms-svc-prod-dr" = {

        address_prefix         = "10.146.96.0/19"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.15.20"

    }
 
    "route-vnet-dga-customsapp-eastus-training" = {

        address_prefix         = "10.233.32.0/20"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.231.24.20"

    }
 
    "DTW-CNS-Dev1" = {

        address_prefix         = "172.16.20.0/22"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.202.0.116"

    }
 
    "Route_10.233.112.0-20" = {

        address_prefix         = "10.233.112.0/20"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.15.20"

    }
 
    "Internet" = {

        address_prefix         = "0.0.0.0/0"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.15.20"

    }
 
    "globalwvdall" = {

        address_prefix         = "10.237.1.0/24"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.15.20"

    }
 
    "route-jump-sophos" = {

        address_prefix         = "10.240.229.16/28"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.15.20"

    }
 
    "Route-snet-common-flex" = {

        address_prefix         = "172.16.37.0/27"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.15.20"

    }
 
    "route-cargoesapp" = {

        address_prefix         = "10.233.0.0/28"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.1.7"

    }
 
    "Route-LCIT-nonprod" = {

        address_prefix         = "10.170.0.0/19"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.201.0.116"

    }
 
    "vnet-global-prod" = {

        address_prefix         = "10.2.32.0/19"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.15.20"

    }
 
    "Route-Rundeck-Prod" = {

        address_prefix         = "10.223.16.18/32"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.222.32.20"

    }
 
    "Route-cargoescanada-preprod" = {

        address_prefix         = "10.212.0.0/20"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.200.0.116"

    }
 
    "vnet-accounts-preprod" = {

        address_prefix         = "10.210.16.0/21"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.15.20"

    }
 
    "route-cargoescustoms-dev" = {

        address_prefix         = "10.146.0.0/21"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.254.15.20"

    }
 
    "Route_10.146.128.0-19" = {

        address_prefix         = "10.146.128.0/19"

        next_hop_type          = "VirtualAppliance"

        next_hop_in_ip_address = "10.201.0.116"

    }


}

tags                          = {


        "Application Owner" = "Global IT Infra Team"
 
        "ENV" = "PROD"
 
        "Application Name" = "WVD"


}

