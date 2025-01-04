subscription_id     = <subscription_id>
resource_group_name           = "rg-sec-dataprivacy-poc"
name                          = "rt-sec-dataprivacy"
disable_bgp_route_propagation = false # Set "true", to prevent the propagation of on-premises routes to the network interfaces in associated subnets.
routes = {
  "route-wvdall" = {
    address_prefix         = "10.237.1.0/24"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.1.7"
  }

  "Internet" = {
    address_prefix         = "0.0.0.0/0"
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
}

tags = {
  "Application Owner" : "Sadaqat Ulla Patel",
  "ENV" : "POC",
  "Application Name" : "Dataprivacy Tool Securiti.ai",
  "RITM" : "RITM0069628"
}