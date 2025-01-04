subscription_id     = <subscription_id>
profile_name           = "traffic-manager-ros-prod"
resource_group_name    = "rg-ros-prod"
traffic_routing_method = "Priority"
traffic_view_enabled   = true
profile_status         = "Enabled"
dns_config = {
  relative_name = "traf-rosprod"
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
  "ENV" : "Prod"
}
###External Endpoint Vars - Map Objects####

external_endpoint_name = {
  EP_ROS_BLU_Prod = {
    name              = "EP_ROS_BLU_Prod"
    endpoint_location = ""
    profile_id        = "traf-prod"
    target            = "20.174.48.212"
    weight            = 1
    priority          = 1
  }
  EP_ROS_GRN_NonProd = {
    name              = "EP_ROS_GRN_Prod"
    endpoint_location = ""
    profile_id        = "traf-prod"
    target            = "20.174.48.224"
    enabled           = false
    weight            = 1
    priority          = 2
  }
}