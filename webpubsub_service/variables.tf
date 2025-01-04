variable "subscription_id" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "name" {
  type = string
}

variable "sku" {
  type = string
}

variable "capacity" {
  type = number
}

variable "public_network_access_enabled" {
  type = bool
}

variable "live_trace_enabled" {
  type = bool
}

variable "live_trace_messaging_logs_enabled" {
  type = bool
}

variable "live_trace_connectivity_logs_enabled" {
  type = bool
}

variable "tags" {
  type    = map(string)
  default = {}
}
