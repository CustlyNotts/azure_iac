subscription_id     = <subscription_id>
resource_group_name           = "Rg-Cargoes-APIM-NonProd"
name                          = "rt-apimnonprod"
disable_bgp_route_propagation = false # Set "true", to prevent the propagation of on-premises routes to the network interfaces in associated subnets.
routes = {
  "canada_VPN_N4" = {
    address_prefix         = "10.41.2.0/24"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.1.7"
  }

  "Management" = {
    address_prefix         = "ApiManagement"
    next_hop_type          = "Internet"
  }
  "VPN" = {
    address_prefix         = "172.16.8.0/22"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.1.7"

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
  "Route_UAE_Vnet-trackingservice-dev" = {
    address_prefix         = "10.143.0.0/18"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  }
}
