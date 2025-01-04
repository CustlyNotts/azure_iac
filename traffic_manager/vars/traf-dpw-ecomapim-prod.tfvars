subscription_id     = <subscription_id>
profile_name           = "traf-dpw-ecomapim-prod"
resource_group_name    = "rg-dpw-apim-prod"
traffic_routing_method = "Priority"
traffic_view_enabled   = true
profile_status         = "Enabled"
dns_config = {
  relative_name = "traf-dpw-ecomapim-prod"
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
# tags =  {
#   "Application Name" : "NAU",
#   "Application Owner" : "Ibrahim Ali Al-Ali",
#   "ENV" : "NonProd"
# }
###External Endpoint Vars - Map Objects####

external_endpoint_name = {
  agw-btpriappgw-prod = {
    name              = "dpw-ecomapim-blu"
    endpoint_location = ""
    profile_id        = "traf-dpw-ecomapim-prod"
    target            = "20.233.193.21"
    weight            = 1
    priority          = 5
    enabled           = false
  }
  agw-bt-dr = {
    name              = "dpw-ecomapim-grn"
    endpoint_location = ""
    profile_id        = "traf-dpw-ecomapim-prod"
    target            = "20.233.193.20"
    enabled           = true
    weight            = 1
    priority          = 2
  }
}
