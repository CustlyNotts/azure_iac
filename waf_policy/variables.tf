variable "subscription_id" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "name" {
  type = string
}

variable "custom_rules" {
  type = list(object({
    name      = optional(string)
    priority  = optional(number)
    rule_type = optional(string)
    action    = optional(string)
    match_conditions = optional(object({
      operator           = optional(string)
      negation_condition = optional(bool)
      match_values       = optional(list(string))
      variable_name      = optional(string)
      selector           = optional(string)
    }))
  }))
  default = []
}

variable "policy_settings" {
  type = object({
    enabled                          = optional(bool)
    mode                             = optional(string)
    request_body_check               = optional(bool)
    file_upload_limit_in_mb          = optional(number)
    max_request_body_size_in_kb      = optional(number)
    request_body_inspect_limit_in_kb = optional(number)
  })
  default = null
}

variable "managed_rules" {
  type = list(object({
    exclusion = optional(object({
      match_variable          = optional(string)
      selector                = optional(string)
      selector_match_operator = optional(string)
    }))
  }))
  default = null
}

variable "managed_rule_set" {
  type = list(object({
    type            = string
    version         = string
    rule_group_name = optional(string, null)
  }))
  default = null
}

variable "tags" {
  type    = map(any)
  default = null
}