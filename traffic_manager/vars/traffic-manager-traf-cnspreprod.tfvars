subscription_id     = <subscription_id>
profile_name           = "traf-cnspreprod"
resource_group_name    = "rg-cnspreprod"
traffic_routing_method = "Priority"
profile_status         = "Enabled"
dns_config = {
  relative_name = "traf-cnspreprod"
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
  "ENV" : "DEV"
}
###External Endpoint Vars - Map Objects####

external_endpoint_name = {
  CNSPreprod = {
    name              = "CNSPreprod"
    endpoint_location = ""
    profile_id        = "traf-cnspreprod"
    target            = "20.108.59.235"
    weight            = 1
    priority          = 1
  }
  test = {
    name              = "test"
    endpoint_location = ""
    profile_id        = "traf-cnspreprod"
    target            = "51.142.150.35"
    enabled           = false
    weight            = 1
    priority          = 2
  }
}
