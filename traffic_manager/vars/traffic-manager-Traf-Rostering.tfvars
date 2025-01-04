subscription_id     = <subscription_id>
profile_name           = "Traf-Rostering"
resource_group_name    = "rg-rostima-prod"
traffic_routing_method = "Priority"
traffic_view_enabled   = false
profile_status         = "Enabled"
dns_config = {
  relative_name = "traf-rostering"
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
  PoemsPrimary = {
    name              = "PoemsPrimary"
    endpoint_location = ""
    profile_id        = "traf-prod"
    target            = "20.203.35.177"
    weight            = 1
    priority          = 1
  }
  PoemsSecondary = {
    name              = "PoemsSecondary"
    endpoint_location = ""
    profile_id        = "traf-prod"
    target            = "51.143.239.17"
    enabled           = false
    weight            = 1
    priority          = 2
  }
  poems-appgw = {
    name              = "poems-appgw"
    endpoint_location = ""
    profile_id        = "traf-prod"
    target            = "20.74.147.100"
    enabled           = false
    weight            = 1
    priority          = 3
  }
}
