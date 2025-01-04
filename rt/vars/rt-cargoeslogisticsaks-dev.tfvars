subscription_id     = <subscription_id>
resource_group_name           = "rg-cargoeslogisticsdev-infra"
name                          = "rt-cargoeslogisticsaks-dev"
disable_bgp_route_propagation = false # Set "true", to prevent the propagation of on-premises routes to the network interfaces in associated subnets.
routes = {
  "Internet" = {
    address_prefix         = "0.0.0.0/0"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  },
  "Remote_Access_VPN" = {
    address_prefix         = "172.16.8.0/22"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.1.7"
  },
    "route-logistics-dev-cargoes-platform-green-staging" = {
    address_prefix         = "10.7.208.0/21"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  },
    "Route-snet-aks-global-uat" = {
    address_prefix         = "10.170.176.0/21"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.1.7"
  },
    "Route-snet-aksnode-global-test" = {
    address_prefix         = "10.170.168.0/24"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.1.7"
  },
    "Route-snet-akspod-global-test" = {
    address_prefix         = "10.170.160.0/21"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.1.7"
  },
    "Route_Boomi_NonProd" = {
    address_prefix         = "10.151.4.0/25"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  },
    "Route_Canada_Monitoring" = {
    address_prefix         = "10.152.4.136/32"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.1.7"
  },
    "Route_Canada_N4" = {
    address_prefix         = "10.41.2.0/24"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.1.7"
  },
    "Route_CargoesRunner" = {
    address_prefix         = "10.153.224.0/22"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  },
    "Route_CNS_Dev" = {
    address_prefix         = "172.22.0.0/16"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.202.0.116"
  },
    "Route_Ros" = {
    address_prefix         = "10.171.153.19/32"
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
    "ROUTE_UAE_VMSS_WAF_POC" = {
    address_prefix         = "10.205.9.0/24"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.205.9.20"
  },
    "Route_Zodiac" = {
    address_prefix         = "10.91.62.26/32"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.1.7"
  },
    "Route_Zodiac_NSICT62" = {
    address_prefix         = "10.91.62.149/32"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.1.7"
  }
}

tags = {
  "Application Name" = "Azure infra"
  "ENV" = "INFRA"
  "Application Owner" = "Global IT Infra Team"
}