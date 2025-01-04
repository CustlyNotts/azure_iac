subscription_id     = <subscription_id>
profile_name           = "traf-wms-nonprod"
resource_group_name    = "rg-wms-infra-nonprod"
traffic_routing_method = "Priority"
traffic_view_enabled   = true
profile_status         = "Enabled"
dns_config = {
  relative_name = "traf-wms-nonprod"
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
  "Application Name"  = "Warehouse Management System",
  "Application Owner" = "Sandeep Gupta",
  "RITM"              = "RITM0097856"
  "ENV"               = "NonProd"
}
###External Endpoint Vars - Map Objects####

external_endpoint_name = {
  agw-btpriappgw-prod = {
    name              = "wms-nonprod-blu"
    endpoint_location = ""
    profile_id        = "traf-wms-nonprod"
    target            = "20.233.232.91"
    weight            = 1
    priority          = 5
    enabled           = true
  }
  agw-bt-dr = {
    name              = "wms-nonprod-grn"
    endpoint_location = ""
    profile_id        = "traf-wms-nonprod"
    target            = "20.233.234.28"
    enabled           = false
    weight            = 1
    priority          = 2
  }
}
