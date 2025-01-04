subscription_id     = <subscription_id>
profile_name           = "accounts-preprod"
resource_group_name    = "rg-accountspreprod"
traffic_routing_method = "Performance"
profile_status         = "Enabled"
dns_config = {
  relative_name = "accounts-preprod"
  ttl           = 60
}
monitor_config = {
  protocol                     = "HTTP"
  port                         = 80
  path                         = "/"
  interval_in_seconds          = 30
  tolerated_number_of_failures = 3
  timeout_in_seconds           = 10
  custom_header = {
    name  = "https"
    value = "//pre-login.cargoes.com"
  }
}
tags = {
  "ENV" : "PREPROD"
}

###External Endpoint Vars - Map Objects####

external_endpoint_name = {
  accountspreprod-login = {
    name              = "accountspreprod-login"
    endpoint_location = "UAE North"
    profile_id        = "accounts-preprod"
    target            = "20.203.124.27"
    weight            = 1
    priority          = 1
  }
  accountspreprod-login-dr = {
    name              = "accountspreprod-login-dr"
    endpoint_location = "UAE Central"
    profile_id        = "accounts-preprod"
    target            = "40.126.215.236"
    enabled           = false
    weight            = 1
    priority          = 2
  }
}
