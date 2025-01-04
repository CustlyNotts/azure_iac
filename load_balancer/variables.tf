variable "subscription_id" {
  description = "Subscription ID"
  type        = string
}

variable "location" {
  description = "Azure location."
  type        = string
}

variable "resource_group_name" {
  description = "Resource group name"
  type        = string
}

variable "sku_name" {
  description = "The Name of the SKU used for this Load Balancer. Possible values are \"Basic\" and \"Standard\"."
  type        = string
  default     = "Standard"
}

variable "allocate_public_ip" {
  description = "True to allocate a Public IP to the Load Balancer."
  type        = bool
  default     = false
}

variable "public_ip_sku" {
  description = "SKU name for the Public IP address, can be `Basic` or `Standard`."
  type        = string
  default     = "Standard"
}

variable "public_ip_allocation_method" {
  description = "Allocation method for the Public IP address, can be `Static`, `Dynamic`."
  type        = string
  default     = "Static"
}

variable "public_ip_custom_domain_name_label" {
  description = "Label for the Domain Name. Will be used to make up the FQDN. If a domain name label is specified, an A DNS record is created for the public IP in the Microsoft Azure DNS system. Defaults to Load Balancer's name, set `null` to disable."
  type        = string
  default     = ""
}

variable "enable_nat" {
  description = "True to enable NAT through Load Balancer outbound rules."
  type        = bool
  default     = false
}

variable "nat_allocated_outbound_ports" {
  description = "Number of allocated outbound ports for NAT."
  type        = number
  default     = 1024
}

variable "nat_protocol" {
  description = "Transport protocol to use for NAT."
  type        = string
  default     = "All"
}

variable "lb_frontend_ip_configurations" {
  description = "`frontend_ip_configuration` blocks as documented here: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/lb#frontend_ip_configuration."
  type = map(object({
    name      = string
    subnet_id = optional(string)

    zones = optional(list(number))

    private_ip_address            = optional(string)
    private_ip_address_allocation = optional(string, "Dynamic")
    private_ip_address_version    = optional(string)

    public_ip_address_id = optional(string)
    public_ip_prefix_id  = optional(string)

    gateway_load_balancer_frontend_ip_configuration_id = optional(string)
  }))
  default = {}
}

variable "zones" {
  description = "Specifies a list of Availability Zones in which the Public IP Address for this Load Balancer should be located. Also used as default for `frontend_ip_configuration` zones"
  type        = list(number)
  default     = []
}

variable "tags" {
  type    = map(string)
  default = {}
}

variable "lb_name" {
  description = "Name of the Load Balancer"
  type        = string
  default     = null
}

variable "ip_name" {
  description = "Name of the Public IP attached to Load Balancer"
  type        = string
  default     = "lb-pip"
}

variable "ip_configuration_name" {
  description = "IP Config name"
  type        = string
  default     = "config1"
}

variable "backend_address_pools" {
  type = map(object({
    name = string
  }))
  default = {}
}

variable "lb_rules" {
  description = "A map of Azure Load Balancer rules"
  type = map(object({
    name                           = string
    protocol                       = string
    frontend_port                  = number
    backend_port                   = number
    frontend_ip_configuration_name = string
    backend_address_pool_ids       = optional(list(string))
    probe_id                       = optional(string)
    enable_floating_ip             = optional(bool, false)
    idle_timeout_in_minutes        = optional(number)
    load_distribution              = optional(string)
    disable_outbound_snat          = optional(bool)
    enable_tcp_reset               = optional(bool)
  }))
  default = {}
}

variable "lb_probes" {
  description = "A map of healthprobes"
  type = map(object({
    name                = string
    loadbalancer_id     = optional(string)
    protocol            = optional(string)
    port                = number
    probe_threshold     = optional(number)
    request_path        = optional(string)
    interval_in_seconds = optional(number)
    number_of_probes    = optional(number)
  }))
  default = {}
}
