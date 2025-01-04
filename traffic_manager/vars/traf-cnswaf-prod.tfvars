subscription_id     = <subscription_id>
profile_name           = "traf-cnswaf-prod"
resource_group_name    = "rg-cns-infra-prod"
traffic_routing_method = "Priority"
profile_status         = "Enabled"
dns_config = {
  relative_name = "traf-cnswaf-prod"
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
  CNS-GRN = {
    name              = "CNS-GRN"
    endpoint_location = ""
    profile_id        = "traf-cnswaf-prod"
    target            = "4.158.34.30"
    weight            = 1
    priority          = 1
  }
  CNS-BLU = {
    name              = "CNS-BLU"
    endpoint_location = ""
    profile_id        = "traf-cnswaf-prod"
    target            = "4.158.57.3"
    enabled           = false
    weight            = 1
    priority          = 2
  }
}
