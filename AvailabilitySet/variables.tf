
variable "subscription_id" {
  description = "Azure subscription id"
  type        = string
}

variable "availability_set_name" {
  description = "The name of the availability set."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which the availability set will be created."
  type        = string
}

variable "location" {
  description = "The Azure region where the availability set will be located."
  type        = string
  default     = "UAE North" # Default value can be overridden
}

variable "update_domain_count" {
  description = "The number of update domains in the availability set."
  type        = number
  default     = 4
}

variable "fault_domain_count" {
  description = "The number of fault domains in the availability set."
  type        = number
  default     = 2
}
