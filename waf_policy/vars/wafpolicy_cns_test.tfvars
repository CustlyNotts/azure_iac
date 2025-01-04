subscription_id     = <subscription_id>
resource_group_name = "rg-cnsprihubnw"
name                = "wafpolicy_cns_test"
policy_settings = {
  enabled                          = true
  mode                             = "Prevention"
  request_body_check               = false
  file_upload_limit_in_mb          = 100
  max_request_body_size_in_kb      = 128
  request_body_inspect_limit_in_kb = 0
}

managed_rule_set = [
  {
    type = "Microsoft_BotManagerRuleSet"
    version = "0.1"
    rule_group_name = null
  },
  {
    type = "OWASP"
    version = "3.1"
    rule_group_name = "REQUEST-913-SCANNER-DETECTION"
  }
]

custom_rules = [
  {
    name = "rule01"
    priority = 1
    rule_type = "MatchRule"
    action = "Allow"
    match_conditions = {
      operator = "Contains"
      match_values = ["/beems/movements/"]
      variable_name = "RequestUri"
    }
  },
  {
    name = "rule02"
    priority = 2
    rule_type = "MatchRule"
    action = "Allow"
    match_conditions = {
      operator = "Contains"
      match_values = ["/restintegrator/movements/push-notification"]
      variable_name = "RequestUri"
    }
  },
  {
    name = "rule03"
    priority = 3
    rule_type = "MatchRule"
    action = "Allow"
    match_conditions = {
      operator = "Contains"
      match_values = ["/uaa/oauth/token"]
      variable_name = "RequestUri"
    }
  },
  {
    name = "rule04"
    priority = 4
    rule_type = "MatchRule"
    action = "Allow"
    match_conditions = {
      operator = "Contains"
      match_values = ["/beems/movements"]
      variable_name = "RequestUri"
    }
  },
  {
    name = "rule05"
    priority = 5
    rule_type = "MatchRule"
    action = "Allow"
    match_conditions = {
      operator = "Contains"
      match_values = ["/restintegrator/booking"]
      variable_name = "RequestUri"
    }
  },
  {
    name = "rule06"
    priority = 6
    rule_type = "MatchRule"
    action = "Allow"
    match_conditions = {
      operator = "Contains"
      match_values = ["/containerenquiry/containerNomination"]
      variable_name = "RequestUri"
    }
  },
  {
    name = "rule07"
    priority = 7
    rule_type = "MatchRule"
    action = "Allow"
    match_conditions = {
      operator = "Contains"
      match_values = ["/nominatetransporter/searchNominateTransporter"]
      variable_name = "RequestUri"
    }
  },
  {
    name = "rule08"
    priority = 8
    rule_type = "MatchRule"
    action = "Allow"
    match_conditions = {
      operator = "Contains"
      match_values = ["/truckappointment/vbsCreateBooking", "/truckappointment/viewVbsBookings"]
      variable_name = "RequestUri"
    }
  },
  {
    name = "rule09"
    priority = 9
    rule_type = "MatchRule"
    action = "Allow"
    match_conditions = {
      operator = "Contains"
      match_values = ["/truckappointment/vbsDraftBooking", "/truckappointment/searchTaById", "/truckappointment/viewVbsBookings?truckAppointmentNo=", "/containerenquiry/viewNomination", "/truckappointment/vbsCancelBooking?truckAppointmentNo=", "/truckappointment/vbsCancelDraftBooking?truckAppointmentNo=", "/nominatetransporter/searchNominateTransporter", "nominatetransporter/searchById", "/containerenquiry/mawanierror", "/truckappointment/mawanierror"]
      variable_name = "RequestUri"
    }
  },
  {
    name = "rule10"
    priority = 10
    rule_type = "MatchRule"
    action = "Allow"
    match_conditions = {
      operator = "Equal"
      match_values = ["/truckappointment/vbsCreateBooking", "/containerenquiry/allContainers"]
      variable_name = "RequestHeaders"
      selector = "User-Agent"
    }
  },
  {
    name = "rule11"
    priority = 11
    rule_type = "MatchRule"
    action = "Allow"
    match_conditions = {
      operator = "Contains"
      match_values = ["/plans/mps/paymentResponse", "/payments/proceedWithSagePay", "/payments/payment/onSagePayNotification"]
      variable_name = "RequestUri"
    }
  },
]
tags = {
    "Application Name": "Mawani CNS",
        "Application Owner": "Daniel/Sachin",
        "ENV": "PROD"
}