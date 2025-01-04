subscription_id     = <subscription_id>
profile_name           = "TM-FoundationServices-prod"
resource_group_name    = "cargoes-prod"
traffic_routing_method = "Priority"
traffic_view_enabled   = true
profile_status         = "Enabled"
dns_config = {
  relative_name = "tm-foundationalservices-prod"
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
  "Application Name" : "Sharedapps Prod",
  "Application Owner" : "Jay Li/ Jayakrishna Alwar",
  "ENV" : "Prod"
}
###External Endpoint Vars - Map Objects####

external_endpoint_name = {
  EP_ROS_BLU_Prod = {
    name              = "EP_FoundationalServices_BLU_Prod"
    endpoint_location = ""
    profile_id        = "traf-prod"
    target            = "20.233.232.79"
    weight            = 1
    priority          = 1
  }
  EP_ROS_GRN_NonProd = {
    name              = "EP_FoundationalServices_GRN_Prod"
    endpoint_location = ""
    profile_id        = "traf-prod"
    target            = "20.233.233.51"
    enabled           = false
    weight            = 1
    priority          = 2
  }
}
