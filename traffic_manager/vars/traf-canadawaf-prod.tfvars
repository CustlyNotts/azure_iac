subscription_id     = <subscription_id>
profile_name           = "traf-canadawaf-prod"
resource_group_name    = "rg-canadainfra-prod"
traffic_routing_method = "Priority"
profile_status         = "Enabled"
dns_config = {
  relative_name = "traf-canadawaf-prod"
  ttl           = 60
}
monitor_config = {
  protocol                     = "TCP"
  port                         = 8361
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
  CCS_Canada_BLU = {
    name              = "CCS_Canada_BLU"
    endpoint_location = ""
    profile_id        = "traf-canadawaf-prod"
    target            = "4.174.176.92"
    weight            = 1
    priority          = 1
  }
  CCS_Canada_GRN = {
    name              = "CCS_Canada_GRN"
    endpoint_location = ""
    profile_id        = "traf-canadawaf-prod"
    target            = "4.174.176.138"
    enabled           = false
    weight            = 1
    priority          = 2
  }
}
