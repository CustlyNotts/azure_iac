subscription_id     = <subscription_id>
name  = "Route-Ofbiz-Prod"
resource_group_name = "Rg-Ofbiz-Prod"
routes = {
  "VPN" = {
    address_prefix         = "172.16.8.0/22"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.1.7"
  }
  "Route_UAE_SEC_DLP_ME_VA" = {
    address_prefix         = "10.254.7.0/24"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  }
  "Route_SEC_CheckPoint_EDR" = {
    address_prefix         = "10.254.4.4/32"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  }
}

tags = {
  "Application Name" : "Ofbiz",
  "Application Owner" : "Ibrahim Ali Al-Ali",
  "ENV" : "PROD"
}