subscription_id     = <subscription_id>
resource_group_name           = "rg-cargoeslogistics-infra-prod"
name                          = "rt-cargoeslogisticsaks-prod"
disable_bgp_route_propagation = false # Set "true", to prevent the propagation of on-premises routes to the network interfaces in associated subnets.
routes = {
  "Canada-Monitoring" = {
    address_prefix         = "10.152.4.136/32"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.1.7"
  },
    "Canada-N4-Prod" = {
    address_prefix         = "10.42.3.0/24"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.1.7"
  },
    "CargoesRunner_Route" = {
    address_prefix         = "10.159.8.0/21"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  },
    "CompassService" = {
    address_prefix         = "10.165.145.4/32"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  },
    "DocumentService" = {
    address_prefix         = "10.240.2.42/32"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  },
    "ProdCompassService" = {
    address_prefix         = "10.165.96.0/20"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  },
    "RemoteAccessVPN" = {
    address_prefix         = "172.16.8.0/22"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.1.7"
  },
    "Route-AVDDevOps" = {
    address_prefix         = "10.237.12.0/25"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  },
    "Route-Boomi-Prod" = {
    address_prefix         = "10.139.16.0/20"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  },
    "Route_CargoesROS" = {
    address_prefix         = "10.171.0.0/17"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  },
    "Route_CargoesRunner_Prod_Green" = {
    address_prefix         = "10.159.16.0/21"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  },
    "Route_CargoesRunner_Proddr" = {
    address_prefix         = "10.7.112.0/20"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.202.0.116"
  },
    "Route_CRM_FunctionAppProd" = {
    address_prefix         = "10.237.18.38/32"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  },
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
    "vnet-sharedapps" = {
    address_prefix         = "10.240.192.97/32"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  },
    "WVD" = {
    address_prefix         = "10.237.1.0/24"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  },
    "ZodiacNgtsvr11-Prod" = {
    address_prefix         = "10.91.62.23/32"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.1.7"
  },
    "ZodiacNgtsvr89-Prod" = {
    address_prefix         = "10.91.62.85/32"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.1.7"
  },
    "Route-MawaniIP" = {
    address_prefix         = "20.203.112.21/32"
    next_hop_type          = "Internet"
  }
}

tags = {
  "Application Name" = "Cargoes Logistics"
  "ENV" = "PROD"
  "Application Owner" = "Ravi Pandey"
}

