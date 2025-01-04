subscription_id     = <subscription_id>
profile_name           = "Traf-Shipx-nonprod"
resource_group_name    = "rg-cargoesshipxdev-infra"
traffic_routing_method = "Priority"
traffic_view_enabled   = false
profile_status         = "Enabled"
dns_config = {
  relative_name = "traf-shipx-nonprod"
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
  "Application Name" :"Shipx",
  "ENV" : "NonProd",
  "Application Owner":"Shiv Suthar"
}
###External Endpoint Vars - Map Objects####

external_endpoint_name = {
  EP_CargoesTMS_BLU_NonProd = {
    name              = "EP_Shipx_BLU_NonProd"
    endpoint_location = ""
    profile_id        = "traf-shipx-nonprod"
    target            = "20.233.195.17"
    weight            = 1
    priority          = 1
  }
  EP_CargoesTMS_GRN_NonProd = {
    name              = "EP_Shipx_GRN_NonProd"
    endpoint_location = ""
    profile_id        = "EP_Shipx_BLU_NonProd"
    target            = "20.233.193.194"
    enabled           = false
    weight            = 1
    priority          = 2
  }
}
