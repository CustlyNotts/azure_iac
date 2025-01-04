variable "subscription_id" {
  type = string
}

variable "network_security_group_name" {
  type = string
}

variable "network_security_group_resource_group_name" {
  type = string
}

variable "tags" {
  type    = map(string)
  default = {}
}
variable "nsg_rules" {
  type = map(object({
    description                                = string
    priority                                   = string
    direction                                  = string
    access                                     = string
    protocol                                   = string
    source_port_range                          = string
    destination_port_range                     = optional(string)
    destination_port_ranges                    = optional(list(string))
    source_address_prefix                      = optional(string)
    source_address_prefixes                    = optional(list(string))
    source_application_security_group_ids      = optional(list(string))
    destination_application_security_group_ids = optional(list(string))
    destination_address_prefix                 = optional(string)
    destination_address_prefixes               = optional(list(string))
  }))
}
