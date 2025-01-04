subscription_id     = <subscription_id>
name  = "Rt-ros-prod"
resource_group_name = "rg-ros-prod"
routes = {
  "internet" = {
    address_prefix         = "0.0.0.0/0"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  }
  "Route-AVDDevOps" = {
    address_prefix         = "10.237.12.0/25"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  }
  "Route_CargoesLogistics" = {
    address_prefix         = "10.242.40.11/32"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  }
  "Route_cargoesSharedapps" = {
    address_prefix         = "10.240.192.97/32"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
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
  "VPN" = {
    address_prefix         = "172.16.8.0/22"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.1.7"
  }
  "wvdall" = {
    address_prefix         = "10.237.1.0/24"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  }
  "api-accounts.cargoes.com" = {
    address_prefix         = "20.203.112.21/32"
    next_hop_type          = "Internet"
    next_hop_in_ip_address = ""
  }
  "AzCloud" = {
    address_prefix = "AzureCloud"
    next_hop_type  = "Internet"
  }
  "Route_Newrelic_01" = {
    address_prefix = "185.221.84.0/22"
    next_hop_type  = "Internet"
  }
  "Route_Newrelic_02" = {
    address_prefix = "212.32.0.0/20"
    next_hop_type  = "Internet"
  }
  "Route_Newrelic_03" = {
    address_prefix = "158.177.65.64/29"
    next_hop_type  = "Internet"
  }
  "Route_Newrelic_04" = {
    address_prefix = "159.122.103.184/29"
    next_hop_type  = "Internet"
  }
  "Route_Newrelic_05" = {
    address_prefix = "161.156.125.32/28"
    next_hop_type  = "Internet"
  }
  "Route_Newrelic_06" = {
    address_prefix = "3.77.79.0/25"
    next_hop_type  = "Internet"
  }
}
tags = {
  "Application Name" : "ROS",
  "Application Owner" : "Tapabrata Dasgupta",
  "ENV" : "DEV"
}