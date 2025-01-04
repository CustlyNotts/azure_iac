// Draft only // 
subscription_id     = <subscription_id>
profile_name           = "prod-CargoesRunner"
resource_group_name    = "rg_cargoesrunner_prod"
traffic_routing_method = "Performance"
traffic_view_enabled   = false
profile_status         = "Enabled"
dns_config = {
  relative_name = "prod-CargoesRunner"
  ttl           = 60
}
monitor_config = {
  protocol                     = "TCP"
  port                         = 443
  path                         = null
  interval_in_seconds          = 30
  tolerated_number_of_failures = 3
  timeout_in_seconds           = 10
  custom_header                = null
}
tags = {
  "ENV" : "PROD"
}
###External Endpoint Vars - Map Objects####

external_endpoint_name = {
  CargoesRunner_Prod = {
    name              = "CargoesRunner_Prod"
    endpoint_location = "UAE North"
    profile_id        = "prod-CargoesRunner"
    target            = "20.203.67.91"
    weight            = 1
    priority          = 1
  }
  CargoesRunner_Prod_Green = {
    name              = "CargoesRunner_Prod_Green"
    endpoint_location = ""
    profile_id        = "prod-CargoesRunner"
    target            = "20.203.70.172"
    enabled           = false
    weight            = 1
    priority          = 2
  }
    CargoesRunner_Prod_old = {
    name              = "CargoesRunner_Prod_old"
    endpoint_location = ""
    profile_id        = "prod-CargoesRunner"
    target            = "40.123.219.148"
    enabled           = false
    weight            = 1
    priority          = 2
  }
    Cargoesrunner_Prod_Appgateway= {
    name              = "Cargoesrunner_Prod_Appgateway"
    endpoint_location = ""
    profile_id        = "prod-CargoesRunner"
    target            = "20.74.147.100"
    enabled           = false
    weight            = 1
    priority          = 2
  }
}
