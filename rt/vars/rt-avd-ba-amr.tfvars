subscription_id     = <subscription_id>
resource_group_name     = "rg-avd-amr-prod"
name                = "rt-avd-ba-amr"
disable_bgp_route_propagation = false
routes = {

     "wvdall" = {
        address_prefix         = "10.237.1.0/24"
        next_hop_type          = "VirtualAppliance"
        next_hop_in_ip_address = "10.200.0.116"
    }     
    "Route-to-Vnetcsc" = {
        address_prefix         = "10.220.6.0/23"
        next_hop_type          = "VirtualAppliance"
        next_hop_in_ip_address = "10.200.0.20"
    }    
     "Route-to-CDP-GlobalProcessing" = {
        address_prefix         = "10.220.228.0/23"
        next_hop_type          = "VirtualAppliance"
        next_hop_in_ip_address = "10.200.0.20"
    }    
     "Route_SEC_CheckPoint_EDR" = {
        address_prefix         = "10.254.4.4/32"
        next_hop_type          = "VirtualAppliance"
        next_hop_in_ip_address = "10.200.0.116"
    }    
     "Route_UAE_10.254.4.0" = {
        address_prefix         = "10.254.4.0/24"
        next_hop_type          = "VirtualAppliance"
        next_hop_in_ip_address = "10.200.0.116"
    }   
       "Route_Datafactory_IR" = {
        address_prefix         = "10.220.1.7/32"
        next_hop_type          = "VirtualAppliance"
        next_hop_in_ip_address = "10.200.0.116"
    }  
     "Route_UAE_SEC_DLP_ME_VA" = {
        address_prefix         = "10.254.7.0/24"
        next_hop_type          = "VirtualAppliance"
        next_hop_in_ip_address = "10.200.0.116"
    }
}
tags = {
  "Application Owner" : "Antoni",
  "ENV" : "AVD",
  "Application Name" : "BA AVD AMR"
  "RITM" : "RITM0096791"
}
