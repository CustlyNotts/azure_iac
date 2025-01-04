variable "subscription_id" {
  type = string
}

variable "location" {
  description = "Azure region to use"
  type        = string
  default     = null
}

variable "resource_group_name" {
  description = "Name of the resource group to use"
  type        = string
}

variable "name" {
  description = "Name of the Application Security Group"
  type        = string
}

variable "tags" {
  type    = map(string)
  default = {}
}