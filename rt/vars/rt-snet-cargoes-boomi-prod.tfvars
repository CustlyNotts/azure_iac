subscription_id     = <subscription_id>
resource_group                = "rg-cargoes-boomi-prod"
name                          = "rt-snet-cargoes-boomi-prod"
disable_bgp_route_propagation = false # Set "true", to prevent the propagation of on-premises routes to the network interfaces in associated subnets.
routes = {
  "Canada_VPN_N4_Preprod" = {
    address_prefix         = "10.41.2.160/32"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.1.7"
  }
  "Canada_VPN_N4_Prod" = {
    address_prefix         = "10.42.3.0/24"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.1.7"
  }
  "route-internet" = {
    address_prefix         = "0.0.0.0/0"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  }
  "Route_Atmosphere_API_1" = {
    address_prefix = "18.213.50.40/32"
    next_hop_type  = "Internet"
  }
  "Route_Atmosphere_API_2" = {
    address_prefix = "52.36.199.99/32"
    next_hop_type  = "Internet"
  }
  "Route_Atmosphere_API_3" = {
    address_prefix = "54.213.181.131/32"
    next_hop_type  = "Internet"
  }
  "Route_Atmosphere_API_4" = {
    address_prefix = "54.68.119.221/32"
    next_hop_type  = "Internet"
  }
  "Route_atmosphere_platform_1" = {
    address_prefix = "18.210.186.202/32"
    next_hop_type  = "Internet"
  }
  "Route_atmosphere_platform_2" = {
    address_prefix = "18.211.196.51/32"
    next_hop_type  = "Internet"
  }
  "Route_atmosphere_platform_3" = {
    address_prefix = "18.213.45.165/32"
    next_hop_type  = "Internet"
  }
  "Route_Boomi_mobilemanageapp_1" = {
    address_prefix = "75.2.102.164/32"
    next_hop_type  = "Internet"
  }
  "Route_Boomi_mobilemanageapp_2" = {
    address_prefix = "99.83.130.243/32"
    next_hop_type  = "Internet"
  }
  "Route_BoomiMawani_Prod" = {
    address_prefix         = "10.152.16.0/20"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  }
  "Route_UAE_SEC_DLP_ME_VA" = {
    address_prefix         = "10.254.7.0/24"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  }
  "routewvdall" = {
    address_prefix         = "10.237.1.0/24"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.1.7"
  }
}