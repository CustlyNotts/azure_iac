variable "resource_group_name" {
  type    = string
  default = null
}

variable "subscription_id" {
  type = string
}

variable "location" {
  type    = string
  default = null
}

###Start###TrafficManager-Profile############
variable "profile_name" {
  type = string
}


variable "profile_status" {
  type = string
  /*
  validation {
    condition = contains(["enabled", "disabled", var.profile_status])
    error_message = "profile_status should be either "Enabled" or "Disabled"" 
  }
*/
  default = "Enabled"
}

variable "traffic_routing_method" {
  type        = string
  description = "Allowed values are \"Geographic\", \"MultiValue\", \"Performance\", \"Priority\", \"Subnet\", \"Weighted\""
  default     = "Performance"
  validation {
    condition     = contains(["Geographic", "MultiValue", "Performance", "Priority", "Subnet", "Weighted"], var.traffic_routing_method)
    error_message = "traffic_routing_method should be any one of this  \"Geographic\" \"MultiValue\" \"Performance\" \"Priority\" \"Subnet\" \"Weighted\""
  }
}

variable "traffic_view_enabled" {
  type    = bool
  default = null
}

variable "max_return" {
  type        = number
  description = "Allowed values between 1 to 8"
  default     = null
}

variable "tags" {
  type    = map(any)
  default = null
}

variable "dns_config" {
  type = object({
    relative_name = string
    ttl           = number
  })
}

variable "monitor_config" {
  type = object({
    protocol                     = string
    port                         = number
    path                         = optional(string)
    expected_status_code_ranges  = optional(list(string))
    interval_in_seconds          = optional(number)
    timeout_in_seconds           = optional(number)
    tolerated_number_of_failures = optional(number)
    custom_header = optional(object({
      value = string
      name  = string
    }), null)
  })
  default = null
}

######END####TrafficManagerProfile##########


######Start##TrafficManager-ExternalEndpoint##############
variable "external_endpoint_name" {
  type = map(object({
    name              = string
    profile_id        = string
    target            = optional(string)
    weight            = optional(number)
    priority          = optional(number)
    enabled           = optional(bool, true)
    endpoint_location = optional(string)
    geo_mappings      = optional(list(string), [])
    custom_header = optional(object({
      name  = string
      value = string
    }), null)
    subnet = optional(object({
      first = string
      last  = optional(string)
      scope = optional(string)
    }), null)
  }))
  default = null
}
######End##TrafficManager-ExternalEndpoint##############
