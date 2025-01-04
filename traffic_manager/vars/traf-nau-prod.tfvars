subscription_id     = <subscription_id>
profile_name           = "traf-nau-prod"
resource_group_name    = "rg-nau-infra-prod"
traffic_routing_method = "Priority"
traffic_view_enabled   = true
profile_status         = "Enabled"
dns_config = {
  relative_name = "traf-nau-prod"
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
tags =  {
  "Application Name" : "NAU",
  "Application Owner" : "Ibrahim Ali Al-Ali",
  "ENV" : "Prod"
}
###External Endpoint Vars - Map Objects####

external_endpoint_name = {
  agw-btpriappgw-prod = {
    name              = "nau-prod-blu"
    endpoint_location = ""
    profile_id        = "traf-nau-prod"
    target            = "20.174.49.73"
    weight            = 1
    priority          = 5
    enabled           = false
  }
  agw-bt-dr = {
    name              = "nau-prod-grn"
    endpoint_location = ""
    profile_id        = "traf-nau-prod"
    target            = "20.174.49.119"
    enabled           = true
    weight            = 1
    priority          = 2
  }
}
