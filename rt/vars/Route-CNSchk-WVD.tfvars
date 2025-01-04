
subscription_id     = <subscription_id>
resource_group                = "rg-checkpointappfw"
name                          = "Route-CNSchk-WVD"
disable_bgp_route_propagation = true
routes = {

  "Route-WVD-All" = {

    address_prefix = "10.237.1.0/24"

    next_hop_type = "VirtualAppliance"

    next_hop_in_ip_address = "10.222.4.20"

  }


}

tags = {


  "Application Owner" = "Daniel/Sachin"

  "ENV" = "PROD"

  "Application Name" = "Mawani CNS"


}

