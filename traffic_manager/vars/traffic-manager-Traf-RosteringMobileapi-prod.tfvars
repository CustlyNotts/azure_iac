subscription_id     = <subscription_id>
profile_name           = "Traf-RosteringMobileapi-prod"
resource_group_name    = "rg-rostima-prod"
traffic_routing_method = "Priority"
traffic_view_enabled   = false
profile_status         = "Enabled"
dns_config = {
  relative_name = "traf-rosteringmobileapi-prod"
  ttl           = 60
}
monitor_config = {
  protocol                     = "HTTP"
  port                         = 80
  path                         = "/"
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
  RosteringMobileapi-Primary = {
    name              = "RosteringMobileapi-Primary"
    endpoint_location = ""
    profile_id        = "traf-rosteringmobileapi-prod"
    target            = "20.203.35.177"
    weight            = 1
    priority          = 1
  }
  RosteringMobileapi-DR = {
    name              = "RosteringMobileapi-DR"
    endpoint_location = ""
    profile_id        = "RosteringMobileapi-Primary"
    target            = "51.143.239.17"
    enabled           = false
    weight            = 1
    priority          = 2
  }
}
