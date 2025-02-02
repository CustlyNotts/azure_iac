variable "default_tags_enabled" {
  description = "Option to enable or disable default tags."
  type        = bool
  default     = false
}

variable "extra_tags" {
  description = "Extra tags to add."
  type        = map(string)
  default     = {}
}

variable "service_plan_extra_tags" {
  description = "Extra tags to add."
  type        = map(string)
  default     = {}
}
