subscription_id     = <subscription_id>
profile_name           = "traf-cnsprod"
resource_group_name    = "rg-cnsprod"
traffic_routing_method = "Priority"
traffic_view_enabled   = true
profile_status         = "Enabled"
dns_config = {
  relative_name = "traf-cnsprod"
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
  CNS-Prod = {
    name              = "CNS-Prod"
    endpoint_location = ""
    profile_id        = "traf-prod"
    target            = "51.132.212.118"
    weight            = 1
    priority          = 1
  }
  agw-eurhub-prod = {
    name              = "agw-eurhub-prod"
    endpoint_location = ""
    profile_id        = "traf-prod"
    target            = "172.166.160.34"
    enabled           = false
    weight            = 1
    priority          = 2
  }
}
