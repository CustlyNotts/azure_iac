subscription_id     = <subscription_id>
profile_name           = "tm-wlp"
resource_group_name    = "rg-wlp-shared-services"
traffic_routing_method = "Priority"
profile_status         = "Enabled"
dns_config = {
  relative_name = "tm-wlp"
  ttl           = 60
}
monitor_config = {
  protocol                     = "HTTPS"
  port                         = 443
  path                         = "/status"
  interval_in_seconds          = 30
  tolerated_number_of_failures = 3
  timeout_in_seconds           = 10
  custom_header = {
    name  = "host"
    value = "digital.worldlogisticspassport.com"
  }
}
tags = {
  "ENV" : "PROD"
}
###External Endpoint Vars - Map Objects####

external_endpoint_name = {
  ep-wlp-prod-uaenorth = {
    name              = "ep-wlp-prod-uaenorth"
    endpoint_location = ""
    profile_id        = "tm-wlp"
    target            = "20.46.155.89"
    weight            = 1
    priority          = 1
    custom_header = {
      name  = "host"
      value = "digital.worldlogisticspassport.com"
    }
  }

  wp-wlp-prod-dr-uaecentral = {
    name              = "wp-wlp-prod-dr-uaecentral"
    endpoint_location = ""
    profile_id        = "tm-wlp"
    target            = "20.45.69.219"
    enabled           = false
    weight            = 1
    priority          = 2
    custom_header = {
      name  = "host"
      value = "digital.worldlogisticspassport.com"
    }
  }
}
