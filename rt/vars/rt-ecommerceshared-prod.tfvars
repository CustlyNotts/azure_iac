subscription_id     = <subscription_id>
name  = "rt-ecommerceshared-prod"
resource_group_name = "rg-ecommerce-infra-prod"
routes = {
  "wvdAll" = {
    address_prefix         = "10.237.1.0/24"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  }
  "VPN" = {
    address_prefix         = "172.16.8.0/22"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.1.7"
  }
  "Newrelic" = {
    address_prefix         = "185.221.84.0/22"
    next_hop_type          = "Internet"
    //next_hop_in_ip_address = ""
  }
  "NewRelic1" = {
    address_prefix         = "185.221.86.57/32"
    next_hop_type          = "Internet"
    //next_hop_in_ip_address = ""
  }
  "Newrelic2" = {
    address_prefix         = "185.221.86.25/32"
    next_hop_type          = "Internet"
    //next_hop_in_ip_address = ""
  }
  "Newrelic3" = {
    address_prefix         = "158.177.65.64/29"
    next_hop_type          = "Internet"
    //next_hop_in_ip_address = ""
  }
  "Newrelic4" = {
    address_prefix         = "161.156.125.32/28"
    next_hop_type          = "Internet"
    //next_hop_in_ip_address = ""
  }
  "Newrelic5" = {
    address_prefix         = "199.232.45.27/32"
    next_hop_type          = "Internet"
    //next_hop_in_ip_address = ""
  }
  "newrelic6" = {
    address_prefix         = "104.97.76.184/32"
    next_hop_type          = "Internet"
    //next_hop_in_ip_address = ""
  }
  "Newrelic7" = {
    address_prefix         = "162.247.240.0/22"
    next_hop_type          = "Internet"
   // next_hop_in_ip_address = ""
  }
  "snet-ecommerce-prod-dr" = {
    address_prefix         = "10.165.160.0/24"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  }
  "Route_UAE_SEC_DLP_ME_VA" = {
    address_prefix         = "10.254.7.0/24"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  }
  "Route-AVDDevOps" = {
    address_prefix         = "10.237.12.0/25"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  }
  "Route_UAE_10.254.4.0" = {
    address_prefix         = "10.254.4.0/24"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  }
  "Route_SEC_CheckPoint_EDR" = {
    address_prefix         = "10.254.4.4/32"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  }
  "testonly" = {
    address_prefix         = "10.165.64.0/19"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  }
}

tags = {
  "Application Name" : "Ecommerce (Dubuy & DM)",
  "Application Owner" : "Arup Sarkar",
  "ENV" : "PROD"
}

