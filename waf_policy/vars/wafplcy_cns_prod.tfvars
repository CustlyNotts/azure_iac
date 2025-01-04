subscription_id     = <subscription_id>
resource_group_name = "rg-cnsprod"
name                = "wafplcy_cns_prod"
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
      match_values = ["/payments/forwardToPaymentGateway"]
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
      match_values = ["/payments/", "/payments/initiatePayment", "/payments/error.html"]
      variable_name = "RequestUri"
    }
  }
]
tags = {
      "ENV": "PROD",
        "Application Owner": "Daniel/Sachin",
        "Application Name": "Mawani CNS"
}