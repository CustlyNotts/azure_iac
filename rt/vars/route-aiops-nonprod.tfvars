subscription_id     = <subscription_id>
name  = "route-aiops-nonprod"
resource_group_name = "rg-aiops-nonprod"
routes = {
  "AzAdmin_avd" = {
    address_prefix         = "10.237.1.0/24"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.202.0.116"
  }
}
tags = {
  "Application Name" : "AI",
  "Application Owner" : "som.dutta@dpworld.com",
  "ENV" : "DEV"
}

