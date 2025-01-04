variable "subscription_id" {
  type        = string
  description = "Subscription ID"
}

variable "name" {
  type        = string
  description = "Name of the Virtual Machine"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the resource group in which VM is located"
}

# variable "action_group_name" {
#   type        = string
#   description = "Name of the action group"
# }

# variable "action_group_resource_group_name" {
#   type        = string
#   description = "Name of resource group in which action group is located"
# }

variable "action_group_id" {
  type        = string
  description = "Resource ID of the action group"
}

variable "accountName" {
  type        = string
  description = "Name of the account/application/subscription"
}

# variable "metric_alerts" {
#   type = map(object({
#     severity          = number
#     description       = string
#     metric_namespace  = string
#     metric_name       = string
#     aggregation       = string
#     operator          = string
#     threshold         = number
#     action_group_id   = string
#     subscription_name = optional(string)
#   }))
# }

variable "security_VM" {
  type    = bool
  default = false
}