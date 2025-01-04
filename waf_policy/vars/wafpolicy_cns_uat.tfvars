subscription_id     = <subscription_id>
resource_group_name = "rg-cnsuat"
name                = "wafpolicy_cns_uat"
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
    version = "3.1"
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
      match_values = ["/payments/proceedWithSagePay", "/payments/payment/onSagePayNotification", "/plans/mps/paymentResponse"]
      variable_name = "RequestUri"
    }
  }
]
tags = {
    "Application Name": "Mawani CNS",
        "Application Owner": "Daniel/Sachin",
        "ENV": "DEV"
}