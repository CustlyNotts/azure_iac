subscription_id     = <subscription_id>
profile_name           = "traffic-manager-ros-nonprod"
resource_group_name    = "rg-ros-nonprod"
traffic_routing_method = "Priority"
traffic_view_enabled   = true
profile_status         = "Enabled"
dns_config = {
  relative_name = "traf-rosnonprod"
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
  "Application Name" : "ROS",
  "Application Owner" : "Tapabrata Dasgupta",
  "ENV" : "Non-Prod"
}
###External Endpoint Vars - Map Objects####

external_endpoint_name = {
  EP_ROS_BLU_NonProd = {
    name              = "EP_ROS_BLU_NonProd"
    endpoint_location = ""
    profile_id        = "traf-Nonprod"
    target            = "20.174.48.212"
    weight            = 1
    priority          = 1
  }
  EP_ROS_GRN_NonProd = {
    name              = "EP_ROS_GRN_NonProd"
    endpoint_location = ""
    profile_id        = "traf-Nonprod"
    target            = "20.174.48.224"
    enabled           = false
    weight            = 1
    priority          = 2
  }
}
