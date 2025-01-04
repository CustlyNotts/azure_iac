variable "subscription_id" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "name" {
  type = string
}

variable "location" {
  type    = string
  default = null
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

variable "local_auth_enabled" {
  type    = bool
  default = null
}

variable "aad_auth_enabled" {
  type    = bool
  default = null
}

variable "tls_client_cert_enabled" {
  type    = bool
  default = null
}

variable "live_trace" {
  type = object({
    enabled                   = optional(bool)
    messaging_logs_enabled    = optional(bool)
    connectivity_logs_enabled = optional(bool)
    http_request_logs_enabled = optional(bool)
  })
  default = null
}

variable "identity" {
  type = object({
    type         = string
    identity_ids = optional(list(string))
  })
}

variable "tags" {
  type    = map(any)
  default = {}
}