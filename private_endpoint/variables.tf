variable "subscription_id" {
  type = string
}

variable "use_existing_dns" {
  type    = string
  default = false
}

variable "private_endpoint_name" {
  type = string
}

variable "subnet_id" {
  type = string
}

variable "private_service_connection_name" {
  type = string
}

variable "manual_connection" {
  type    = bool
  default = false
}

variable "private_dns_zone_group_name" {
  type    = string
  default = "default"
}

variable "pdz_group" {
  type    = bool
  default = true
}

variable "private_dns_zone_ids" {
  type    = list(string)
  default = []
}

variable "pdz_resource_group_name" {
  type        = list(string)
  description = "Resource group of the Private DNS Zone"
}

variable "pdz_link_name" {
  type        = list(string)
  description = "Name of the Private DNS Zone VNeT link"
}

variable "virtual_network_id" {
  type = list(string)
}

variable "pdz_name" {
  type        = list(string)
  description = "Name of the Private DNS Zone"
}

variable "pdz_counter" {
  type        = number
  default     = 1
  description = "Number of Private DNS Zones. Defaults to 1."
}

variable "vlink_counter" {
  type        = number
  default     = 1
  description = "Number of virtual network links. Defaults to 1"
}

variable "custom_network_interface_name" {
  type        = string
  description = "Custom name of the network interface."
}

variable "linked_pdz_name" {
  type        = list(string)
  description = "Name of the Private DNS zone linked to the VNeT"
}

variable "vlink_resource_group_name" {
  type        = list(string)
  description = "Resource group of the Private DNS Zone"
}


variable "location" {
  type = string
}

variable "extra_tags" {
  type    = map(string)
  default = {}
}

variable "sub_resource_id" {
  type        = string
  description = "Resource ID of the sub-resource"
  default     = "/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rg-test/providers/Microsoft.Logic/workflows/testlogicapp02"
}

variable "sub_resource_names" {
  type        = list(string)
  description = "Example: [redisCache]"
}

variable "azure_private_dns_zone_name" {
  type        = string
  description = "Example: privatelink.redis.cache.windows.net"
}

variable "pe_resource_group_name" {
  type = string
}

variable "tags" {
  type    = map(any)
  default = {}
}

variable "private_dns_tags" {
  type    = map(any)
  default = {}
}

variable "vlink_tags" {
  type    = map(any)
  default = {}
}

variable "ip_configuration" {
  type = object({
    name               = string
    private_ip_address = string
    subresource_name   = string
    member_name        = string
  })
  default = null
}
