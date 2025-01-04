subscription_id     = <subscription_id>
profile_name           = "traf-cnswaf-dr"
resource_group_name    = "rg-cns-infra-dr"
traffic_routing_method = "Priority"
profile_status         = "Enabled"
dns_config = {
  relative_name = "traf-cnswaf-dr"
  ttl           = 60
}
monitor_config = {
  protocol                     = "TCP"
  port                         = 8351
  path                         = null
  interval_in_seconds          = 30
  tolerated_number_of_failures = 3
  timeout_in_seconds           = 10
  custom_header                = null
}

tags = {
  "ENV" : "DR"
}
###External Endpoint Vars - Map Objects####

external_endpoint_name = {
  CNS-DR = {
    name              = "CNS-DR"
    endpoint_location = ""
    profile_id        = "traf-cnswaf-dr"
    target            = "4.158.34.30"
    weight            = 1
    priority          = 1
  }

}
