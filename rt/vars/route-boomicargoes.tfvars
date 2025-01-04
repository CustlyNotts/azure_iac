subscription_id     = <subscription_id>
resource_group                = "rg-cargoes-boomi-nonprod"
name                          = "route-boomicargoes"
disable_bgp_route_propagation = false # Set "true", to prevent the propagation of on-premises routes to the network interfaces in associated subnets.
routes = {
  "Canada_VPN_N4" = {
    address_prefix         = "10.41.2.0/24"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.1.7"
  }

  "finance-staging" = {
    address_prefix         = "10.240.20.0/22"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  }
  "mawaniboomiprod" = {
    address_prefix         = "10.152.16.0/20"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.1.7"

  }

  "Route-to-Internet" = {

    address_prefix         = "0.0.0.0/0"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  }
    "Route_Cargoesrunnernonprod" = {

    address_prefix         = "10.153.224.0/22"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  }
    "Route_UAE_SEC_DLP_ME_VA" = {

    address_prefix         = "10.254.7.0/24"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  }
    "routewvdboomi" = {

    address_prefix         = "10.151.0.0/24"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  }
    "Routewvdglb" = {

    address_prefix         = "10.237.1.0/24"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  }
    "vnetmawaniboominonprod" = {
    address_prefix         = "10.152.0.0/21"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  }
    "Canada_VPN_N4_Prod" = {
    address_prefix         = "10.42.3.0/24"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.1.7"
  }
    "Route_SEC_CheckPoint_EDR" = {
    address_prefix         = "10.254.4.4/32"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  }
    "Route_SEC_CheckPoint_EDR" = {
    address_prefix         = "10.254.4.4/32"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  }
    "Newrelic" = {
    address_prefix         = "185.221.84.0/22"
    next_hop_type          = "Internet"
  }
    "Newrelic1" = {
    address_prefix         = "185.221.86.57/32"
    next_hop_type          = "Internet"
  }
    "Newrelic2" = {
    address_prefix         = "185.221.86.25/32"
    next_hop_type          = "Internet"
  }
    "Newrelic3" = {
    address_prefix         = "158.177.65.64/29"
    next_hop_type          = "Internet"
  }
    "Newrelic4" = {
    address_prefix         = "161.156.125.32/28"
    next_hop_type          = "Internet"
  }
    "Newrelic5" = {
    address_prefix         = "199.232.45.27/32"
    next_hop_type          = "Internet"
  }
    "Newrelic6" = {
    address_prefix         = "104.97.76.184/32"
    next_hop_type          = "Internet"
  }
    "Newrelic7" = {
    address_prefix         = "162.247.240.0/22"
    next_hop_type          = "Internet"
  }
    "Route_Atmosphere_API_1" = {
    address_prefix         = "118.213.50.40/32"
    next_hop_type          = "Internet"
  }
    "Route_Atmosphere_API_2" = {
    address_prefix         = "52.36.199.99/32"
    next_hop_type          = "Internet"
  }
    "Route_Atmosphere_API_3" = {
    address_prefix         = "54.213.181.131/32"
    next_hop_type          = "Internet"
  }
    "Route_Atmosphere_API_4" = {
    address_prefix         = "54.68.119.221/32"
    next_hop_type          = "Internet"
  }
    "route_atmosphere_platform_1" = {
    address_prefix         = "18.210.186.202/32"
    next_hop_type          = "Internet"
  }
    "Route_atmosphere_platform_2" = {
    address_prefix         = "18.211.196.51/32"
    next_hop_type          = "Internet"
  }
    "Route_atmosphere_platform_3" = {
    address_prefix         = "18.213.45.165/32"
    next_hop_type          = "Internet"
  }
    "Route_Boomi_mobilemanageapp_1" = {
    address_prefix         = "75.2.102.164/32"
    next_hop_type          = "Internet"
  }
    "Route_Boomi_mobilemanageapp_2" = {
    address_prefix         = "99.83.130.243/32"
    next_hop_type          = "Internet"
  }
}