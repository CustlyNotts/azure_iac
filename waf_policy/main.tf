resource "azurerm_web_application_firewall_policy" "waf_policy" {
  name                = var.name
  resource_group_name = data.azurerm_resource_group.current.name
  location            = data.azurerm_resource_group.current.location
  tags                = coalesce(var.tags, data.azurerm_resource_group.current.tags)

  dynamic "custom_rules" {
    for_each = var.custom_rules
    content {
      name      = custom_rules.value.name
      priority  = custom_rules.value.priority
      rule_type = custom_rules.value.rule_type

      dynamic "match_conditions" {
        for_each = custom_rules.value.match_conditions != null ? [custom_rules.value.match_conditions] : []
        content {
          match_variables {
            variable_name = custom_rules.value.match_conditions.variable_name
            selector      = custom_rules.value.match_conditions.selector
          }

          operator           = custom_rules.value.match_conditions.operator
          negation_condition = custom_rules.value.match_conditions.negation_condition
          match_values       = custom_rules.value.match_conditions.match_values
        }
      }

      action = custom_rules.value.action
    }
  }

  dynamic "policy_settings" {
    for_each = var.policy_settings != null ? [var.policy_settings] : []
    content {
      enabled                          = policy_settings.value.enabled
      mode                             = policy_settings.value.mode
      request_body_check               = policy_settings.value.request_body_check
      file_upload_limit_in_mb          = policy_settings.value.file_upload_limit_in_mb
      max_request_body_size_in_kb      = policy_settings.value.max_request_body_size_in_kb
      request_body_inspect_limit_in_kb = policy_settings.value.request_body_inspect_limit_in_kb
    }
  }

  managed_rules {
    dynamic "exclusion" {
      for_each = var.managed_rules != null ? [var.managed_rules] : []
      content {
        match_variable          = managed_rules.value.exclusion.match_variable
        selector                = managed_rules.value.exclusion.selector
        selector_match_operator = managed_rules.value.exclusion.selector_match_operator
      }
    }

    dynamic "managed_rule_set" {
      for_each = var.managed_rule_set
      content {
        type    = managed_rule_set.value.type
        version = managed_rule_set.value.version
        dynamic "rule_group_override" {
          for_each = managed_rule_set.value.rule_group_name != null ? [managed_rule_set.value.rule_group_name] : []
          content {
            rule_group_name = managed_rule_set.value.rule_group_name
          }
        }
      }
    }
  }

  lifecycle {
    prevent_destroy = true
  }
}
