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

variable "sku" {
  type    = string
  default = "Standard"
}

variable "subnet" {
  type    = string
  default = null
}

variable "tags" {
  type    = map(any)
  default = null
}

variable "virtual_network_name" {
  type        = string
  description = "virtual network"
}

variable "branch_to_branch_traffic_enabled" {
  type    = bool
  default = false
}

variable "name" {
  type = string
}

#####Connection######
variable "route_server_bgp_connection" {
  type = map(object({
    connection_name = string
    route_server_id = string
    peer_asn        = number
    peer_ip         = string
  }))
  default = null
}
#####Connection######


#####Start#####Public IP#####
variable "publicip_sku" {
  type = object({
    sku  = string
    tier = string
  })
  description = "tier can be either Regional / Global"
  default = {
    sku  = "Standard"
    tier = "Regional"
  }
}

variable "zones" {
  type    = list(string)
  default = []
}

variable "public_ip_tags" {
  type    = map(any)
  default = null
}

variable "ip_tags" {
  type    = map(any)
  default = {}
}

variable "allocation_method" {
  type        = string
  description = "Either Static / Dynamic"
}

variable "public_ip_name" {
  type    = string
  default = null
}

variable "public_ip_enabled" {
  type    = bool
  default = true
}

variable "reverse_fqdn" {
  type    = string
  default = null
}

variable "domain_name_label" {
  type    = string
  default = null

}

variable "idle_timeout_in_minutes" {
  type    = number
  default = null
}

variable "ddos_protection_mode" {
  type    = string
  default = null
}

variable "public_ip_prefix_id" {
  type    = string
  default = null
}

variable "ip_address" {
  type    = string
  default = null
}

#####End#####Public IP#####

