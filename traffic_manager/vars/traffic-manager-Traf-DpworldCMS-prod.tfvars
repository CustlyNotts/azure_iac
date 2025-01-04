subscription_id     = <subscription_id>
profile_name           = "Traf-DpworldCMS-prod"
resource_group_name    = "rg-dpworldcms-prod-infra"
traffic_routing_method = "Priority"
traffic_view_enabled   = false
profile_status         = "Enabled"
dns_config = {
  relative_name = "traf-dpworldcms-prod"
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
  "Application Name"  = "Dpworld CMS",
  "Application Owner" = "Bilal Adham",
  "ENV"               = "Prod"
}
###External Endpoint Vars - Map Objects####

external_endpoint_name = {
  EP_CargoesTMS_BLU_NonProd = {
    name              = "EP_DpworldCMS_BLU_Prod"
    endpoint_location = ""
    profile_id        = "traf-dpworldcms-prod"
    target            = "20.174.69.238"
    weight            = 1
    priority          = 1
  }
  EP_CargoesTMS_GRN_NonProd = {
    name              = "EP_DpworldCMS_GRN_Prod"
    endpoint_location = ""
    profile_id        = "EP_DpworldCMS_BLU_Prod"
    target            = "20.174.71.141"
    enabled           = false
    weight            = 1
    priority          = 2
  }
}
