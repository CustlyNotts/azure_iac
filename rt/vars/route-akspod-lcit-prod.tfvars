subscription_id     = <subscription_id>
resource_group  = "rg-lcit-infra-prod"
name            = "route-akspod-lcit-prod"
routes = {
  "Route-AVDDTW" = {
    address_prefix         = "10.237.5.0/24"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.201.0.116"
  }
  "route-lcit-onprem-mawani-prod" = {
    address_prefix         = "172.19.240.180/32"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.201.0.20"
  }
  "route-lcit-onprem-mawani-prod1" = {
    address_prefix         = "172.19.240.192/32"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.201.0.20"
  }
  "route-lcit-onprem-mawani-prod2" = {
    address_prefix         = "172.19.240.181/32"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.201.0.20"
  }
  "Route_UAE_SEC_DLP_ME_VA" = {
    address_prefix         = "10.254.7.0/24"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.201.0.116"
  }
  "vpn" = {
    address_prefix         = "172.16.10.0/24"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.201.0.20"
  }
  "wvdall" = {
    address_prefix         = "10.237.1.0/24"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.201.0.116"
  }
}