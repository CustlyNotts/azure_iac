subscription_id     = <subscription_id>
name  = "rt-ecommerce-preprod"
resource_group_name = "rg-ecommerce-infra-nonprod"
routes = {
  "internet" = {
    address_prefix         = "0.0.0.0/0"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  }
  "vpn" = {
    address_prefix         = "172.16.8.0/22"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.1.7"
  }
  "wvdAll" = {
    address_prefix         = "10.237.1.0/24"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  }
  "Route-pt-UAE" = {
    address_prefix         = "10.156.9.5/32"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  }
  "vm-pt-cns-EUR" = {
    address_prefix         = "172.22.33.49/32"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.202.0.116"
  }
  "vm-pt-BT" = {
    address_prefix         = "10.222.32.132/32"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.222.32.20"
  }
  "vm-pt-canada-AMR" = {
    address_prefix         = "10.222.254.4/32"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.200.0.116"
  }
  "rt-pertesting" = {
    address_prefix         = "10.240.232.0/24"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.1.7"
  }
  "perftesting-canada" = {
    address_prefix         = "10.240.233.0/24"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.1.7"
  }
  "Route-cargoesloadGen-PT" = {
    address_prefix         = "10.240.224.233/32"
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
  "Route_UAE_EndPoint" = {
    address_prefix         = "10.254.4.4/32"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.254.15.20"
  }
}

tags = {
  "Application Name" : "Ecommerce (Dubuy & DM)",
  "Application Owner" : "Arup Sarkar",
  "ENV" : "DEV"
}

