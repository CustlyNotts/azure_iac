subscription_id     = <subscription_id>
profile_name           = "Traf-AccountsCRR"
resource_group_name    = "rg-accountsproduction"
traffic_routing_method = "Performance"
profile_status         = "Enabled"
dns_config = {
  relative_name = "traf-accountscrr"
  ttl           = 60
}
monitor_config = {
  protocol                     = "TCP"
  port                         = 80
  path                         = null
  interval_in_seconds          = 30
  tolerated_number_of_failures = 3
  timeout_in_seconds           = 10
}
tags = {
  "ENV" : "PROD"
}

###External Endpoint Vars - Map Objects####

external_endpoint_name = {
  Accounts-Prod = {
    name              = "Accounts-Prod"
    endpoint_location = "UAE North"
    profile_id        = "Traf-AccountsCRR"
    target            = "20.203.112.21"
    weight            = 1
    priority          = 1
  }
  Accounts-Dr = {
    name              = "Accounts-Dr"
    endpoint_location = "UAE Central"
    profile_id        = "Traf-AccountsCRR"
    target            = "40.126.215.236"
    enabled           = false
    weight            = 1
    priority          = 2
  }
  Accounts-Prod-Appgw = {
    name              = "Accounts-Prod-Appgw"
    endpoint_location = "UAE North"
    profile_id        = "Traf-AccountsCRR"
    target            = "20.74.147.100"
    enabled           = false
    weight            = 1
    priority          = 3
  }
}
