subscription_id     = <subscription_id>
resource_group_name = "cargoes-prod-dr"
sechub_enabled      = true
route_default       = true
name                = "vnet-cargoessharedapps-prod-dr"
use_ipam            = true
vnet_mask           = 19
subnets = [
    {
    name             = "snetakspod-dr"
    snet_mask        = 21
    ######## Additional Route rules if sechub and route_default is set to true along with default route rules##########
    routes = {
    "Route_BlockchainUAE"  = {
    address_prefix         = "10.191.32.0/19"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.0.20"
    },
    "Route-AVDDevOps" = {
    address_prefix         = "10.237.12.0/25"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.0.20"
    },
   "Route_CargoesFinance" = {
    address_prefix         = "10.240.40.0/22"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.0.20"
    },
  "Route_CargoesFlow" = {
    address_prefix         = "10.243.32.0/19"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.0.20"
    },
  "Route_CargoesLogistics" = {
    address_prefix         = "10.242.32.0/19"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.0.20"
    },
   "Route_CargoesROS" = {
    address_prefix         = "10.171.0.0/17"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.0.20"
    },
  "Route_CargoesRunner" = {
    address_prefix         = "10.159.0.0/16"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.0.20"
    },
  "Route_CargoesRunnerdr" = {
    address_prefix         = "10.7.112.0/20"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.202.0.116"
    },
  "Route_MobileLab_RITM0111692" = {
    address_prefix         = "172.16.18.0/24"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.0.20"
    },
   "Route_SEC_CheckPoint_EDR" = {
    address_prefix         = "10.254.4.4/32"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.0.20"
   },
  "Route_UAE_SEC_DLP_ME_VA" = {
    address_prefix         = "10.254.7.0/24"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.0.20"
   },
  "VPN" = {
    address_prefix         = "172.16.8.0/22"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.1.7"
   },
  "WVD" = {
    address_prefix         = "10.237.1.0/24"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.0.20"
   }
}
},
{
    name             = "snetnonaks-dr"
    snet_mask        = 23
    ######## Additional Route rules if sechub and route_default is set to true along with default route rules##########
    routes = {
    "Route_BlockchainUAE"  = {
    address_prefix         = "10.191.32.0/19"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.0.20"
    },
    "Route-AVDDevOps" = {
    address_prefix         = "10.237.12.0/25"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.0.20"
    },
   "Route_CargoesFinance" = {
    address_prefix         = "10.240.40.0/22"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.0.20"
    },
  "Route_CargoesFlow" = {
    address_prefix         = "10.243.32.0/19"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.0.20"
    },
  "Route_CargoesLogistics" = {
    address_prefix         = "10.242.32.0/19"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.0.20"
    },
   "Route_CargoesROS" = {
    address_prefix         = "10.171.0.0/17"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.0.20"
    },
  "Route_CargoesRunner" = {
    address_prefix         = "10.159.0.0/16"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.0.20"
    },
  "Route_CargoesRunnerdr" = {
    address_prefix         = "10.7.112.0/20"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.202.0.116"
    },
  "Route_MobileLab_RITM0111692" = {
    address_prefix         = "172.16.18.0/24"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.0.20"
    },
   "Route_SEC_CheckPoint_EDR" = {
    address_prefix         = "10.254.4.4/32"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.0.20"
   },
  "Route_UAE_SEC_DLP_ME_VA" = {
    address_prefix         = "10.254.7.0/24"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.0.20"
   },
  "VPN" = {
    address_prefix         = "172.16.8.0/22"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.1.7"
   },
  "WVD" = {
    address_prefix         = "10.237.1.0/24"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.0.20"
   }
  }
}
]
create_default_peerings = true # Creation of peerings to Harmony Connect and Sechub in respective Azure regions. The default is true.
tags = {
  "Application Name" : "Cargoes Shared ",
  "Application Owner" : "Jay Li / Jayakrishna Alwar",
  "ENV" : "INFRA"
}         