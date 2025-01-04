variable "subscription_id" {
  description = "Azure subscription id"
  type        = string
}

variable "name" {
  description = "Azure virtual network name"
  type        = string
}

variable "resource_group_name" {
  description = "Azure resource group name"
  type        = string
}

variable "disable_bgp_route_propagation" {
  description = "Azure resource group name"
  type        = bool
  default     = true
}

variable "routes" {
  type = map(object({
    address_prefix         = string
    next_hop_type          = string
    next_hop_in_ip_address = optional(string)
  }))
}

variable "tags" {
  type    = map(string)
  default = {}

}


variable "route_default" {
  type    = bool
  default = true
}

variable "route_table" {
  type = map(object({
    default_routes = map(object({
      address_prefix         = string
      next_hop_type          = string
      next_hop_in_ip_address = optional(string)
    }))
  }))
  default = {
    route_table = {
      default_routes = {
        route_azure_cloud = {
          address_prefix         = "AzureCloud"
          next_hop_type          = "Internet"
          next_hop_in_ip_address = null
        }
        route_to_newrelic_eu1 = {
          address_prefix         = "185.221.84.0/22"
          next_hop_type          = "Internet"
          next_hop_in_ip_address = null
        }
        route_to_newrelic_eu2 = {
          address_prefix         = "152.38.128.0/19"
          next_hop_type          = "Internet"
          next_hop_in_ip_address = null
        }
      }
    }
  }
}
