subscription_id     = <subscription_id>
profile_name           = "Traf-RosteringAMR-Prod"
resource_group_name    = "rg-crs-amr-prod"
traffic_routing_method = "Priority"
traffic_view_enabled   = false
profile_status         = "Enabled"
dns_config = {
  relative_name = "traf-rosteringamr-prod"
  ttl           = 60
}
monitor_config = {
  protocol                     = "TCP"
  port                         = 80
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
  Primary = {
    name              = "Primary"
    endpoint_location = ""
    profile_id        = "Traf-RosteringAMR-Prod"
    target            = "20.200.95.89"
    weight            = 1
    priority          = 1
  }  
}
