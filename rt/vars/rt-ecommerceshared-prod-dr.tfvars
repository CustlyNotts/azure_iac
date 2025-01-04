subscription_id     = <subscription_id>
name  = "rt-ecommerceshared-prod-dr"
resource_group_name = "rg-ecommerce-infra-prod-dr"
routes = {
  "VPN" = {
    address_prefix         = "172.16.8.0/22"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.1.7"
  }
  "wvdAll" = {
    address_prefix         = "10.237.1.0/24"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  }
  "Route_UAE_SEC_DLP_ME_VA" = {
    address_prefix         = "10.254.7.0/24"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.201.0.116"
  }
  "Route_UAE_10.254.4.0" = {
    address_prefix         = "10.254.4.0/24"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.201.0.116"
  }
  "Route_SEC_CheckPoint_EDR" = {
    address_prefix         = "10.254.4.4/32"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.201.0.116"
  }
}

tags = {
  "Application Name" : "Ecommerce (Dubuy & DM)",
  "Application Owner" : "Arup Sarkar",
  "ENV" : "PROD"
}

