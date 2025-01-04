subscription_id     = <subscription_id>
profile_name           = "traf-rosteringeur-cf-Prod"
resource_group_name    = "rg-appgw-eur-prod"
traffic_routing_method = "Priority"
traffic_view_enabled   = true
profile_status         = "Enabled"
dns_config = {
  relative_name = "tm-rosteringeur-cf-prod"
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
  "Application Name" : "CRS EUR Cloudfalre",
  "Application Owner" : "Hassan Malik",
  "ENV" : "Prod"
}
###External Endpoint Vars - Map Objects####

external_endpoint_name = {
  EUR_Cargoes_Rostering_BLU = {
    name              = "EUR_Cargoes_Rostering_BLU"
    endpoint_location = ""
    profile_id        = "traf-prod"
    target            = "85.210.26.38"
    weight            = 1
    priority          = 1
  }
  EUR_Cargoes_Rostering_GRN = {
    name              = "EUR_Cargoes_Rostering_GRN"
    endpoint_location = ""
    profile_id        = "traf-prod"
    target            = "4.158.115.124"
    enabled           = false
    weight            = 1
    priority          = 2
  }
   EUR_Cargoes_Rostering_DR = {
    name              = "EUR_Cargoes_Rostering_DR"
    endpoint_location = ""
    profile_id        = "traf-prod"
    target            = "20.254.179.139"
    enabled           = false
    weight            = 1
    priority          = 3
  }
}
