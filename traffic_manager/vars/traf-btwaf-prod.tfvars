subscription_id     = <subscription_id>
profile_name           = "traf-btwaf-prod"
resource_group_name    = "rg-btinfra-prod"
traffic_routing_method = "Priority"
profile_status         = "Enabled"
dns_config = {
  relative_name = "traf-btwaf-prod"
  ttl           = 60
}
monitor_config = {
  protocol                     = "TCP"
  port                         = 8355
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
  BTPROD = {
    name              = "BTPROD"
    endpoint_location = ""
    profile_id        = "traf-btwaf-prod"
    target            = "20.40.51.50"
    enabled           = false
    weight            = 1
    priority          = 2
  }
}
