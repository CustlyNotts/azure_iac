subscription_id     = <subscription_id>
resource_group_name = "rg-cnspreprod"
name                = "wafpolicy_cns_preprod"
policy_settings = {
  enabled                          = true
  mode                             = "Detection"
  request_body_check               = true
  file_upload_limit_in_mb          = 100
  max_request_body_size_in_kb      = 128
  request_body_inspect_limit_in_kb = 0
}

managed_rule_set = [
  {
    type = "OWASP"
    version = "3.0"
    rule_group_name = "REQUEST-920-PROTOCOL-ENFORCEMENT"
  },
  {
    type = "Microsoft_BotManagerRuleSet"
    version = "0.1"
    rule_group_name = null
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
      match_values = ["/payments/forwardToPaymentGateway", "/payments/proceedWithSagePay", "/payments/initiatePayment", "/beems-api/movements"]
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
      match_values = ["/beems/declarations", "/open/upload/CLIENT_REG", "/open/saveClientReg", "/common/upload/CLIENT_REG", "/clientnew/saveModified", "/open/saveModified", "/scheduledreports/action/create", "/common/service-announcements", "/beems-api/movements/search", "/restintegrator/travelwallet/search"]
      variable_name = "RequestUri"
    }
  },
]
tags = {
    "Application Name": "Mawani CNS",
        "Application Owner": "Daniel/Sachin",
        "ENV": "DEV"
}