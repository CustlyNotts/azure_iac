// Draft only // 
subscription_id     = <subscription_id>
profile_name           = "traf-bt-uat"
resource_group_name    = "rg-bt-uat"
traffic_routing_method = "Priority"
traffic_view_enabled   = true
profile_status         = "Enabled"
dns_config = {
  relative_name = "traf-bt-uat"
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
  "ENV" : "UAT"
}
###External Endpoint Vars - Map Objects####

external_endpoint_name = {
  agw-btpriappgw-prod = {
    name              = "agw-btpriappgw-prod"
    endpoint_location = ""
    profile_id        = "traf-bt-uat"
    target            = "20.204.244.51"
    weight            = 1
    priority          = 1
  }
  agw-bt-dr = {
    name              = "agw-bt-dr"
    endpoint_location = ""
    profile_id        = "traf-bt-uat"
    target            = "20.235.15.53"
    enabled           = false
    weight            = 1
    priority          = 2
  }
}
