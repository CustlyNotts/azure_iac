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

variable "address_space" {
  type        = list(string)
  description = "The address space that is used in the virtual network. More than one address space can be provisioned."
  default     = []
}

variable "subnets" {
  type = list(object({
    name                                          = string
    address_prefixes                              = optional(list(string))
    snet_mask                                     = optional(number)
    service_endpoints                             = optional(list(string))
    delegation                                    = optional(string)
    private_endpoint_network_policies_enabled     = optional(bool)
    private_link_service_network_policies_enabled = optional(bool)
    route_table_id                                = optional(string)
    network_security_group_id                     = optional(string)
    nat_gateway_id                                = optional(string)
    routes = optional(map(object({
      address_prefix         = string
      next_hop_type          = string
      next_hop_in_ip_address = optional(string)
    })))
    nsg_rules = optional(map(object({
      description                                = string
      priority                                   = number
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
    })))
  }))
  default     = []
  description = "List of objects that represent the configuration of each subnet."
}

variable "dns_servers" {
  type        = list(string)
  default     = []
  description = "List of IP addresses of DNS servers."
}

variable "ddos_protection_plan_id" {
  type        = string
  default     = null
  description = "The ID of DDoS Protection Plan."
}

variable "bgp_community" {
  type        = string
  default     = null
  description = "The BGP community attribute in format <as-number>:<community-value>. The as-number segment is the Microsoft ASN, which is always 12076 for now."
}

variable "create_default_peerings" {
  type    = bool
  default = true
}

variable "use_ipam" {
  description = "use Azure IPAM"
  type        = bool
  default     = false
}

variable "vnet_mask" {
  type        = number
  description = "The name of the virtual network."
  default     = null
}

variable "peerings" {
  type = map(object({
    remote_virtual_network_id = optional(string)
    allow_forwarded_traffic   = optional(bool, true)
    use_remote_gateways       = optional(bool, false)
    allow_gateway_transit     = optional(bool, false)
  }))
  default = {}
}


variable "tags" {
  type        = map(string)
  default     = {}
  description = "A mapping of tags to assign to the resource."
}

variable "location" {
  description = "Azure resource group location"
  default     = null
  type        = string
}

variable "tfclios" {
  description = "Terraform client machine is windows then pass this variable  \"tfclios=windows\" else leave it default"
  default     = "Linux"
  type        = string
}

variable "ipam_block" {
  type = map(string)
  default = {
    "uaenorth"      = "UAERegionPrimary"
    "uaecentral"    = "UAERegionDR"
    "eastasia"      = "APACRegionPrimary"
    "southeastasia" = "APACRegionPrimary"
    "centralasia"   = "APACRegionPrimary"
    "westindia"     = "APACRegionPrimary"
    "southindia"    = "APACRegionDR"
    "uksouth"       = "EURRegionPrimary"
    "ukwest"        = "EURRegionDR"
    "canadacentral" = "AMRRegionPrimary"
    "canadaeast"    = "AMRRegionDR"
    "centralindia"  = "UAERegionPrimary"
  }
}

variable "vnet_exist" {
  type    = bool
  default = false
}

variable "sechub_enabled" {
  type    = bool
  default = false
}

variable "route_default" {
  type    = bool
  default = false
}

variable "nsg_default" {
  type    = bool
  default = false
}

variable "use_remote_gateways" {
  type    = bool
  default = true
}

variable "route_table" {
  type = map(object({
    bgp_route_propagation_enabled = optional(bool, true)
    default_routes = map(object({
      address_prefix         = string
      next_hop_type          = string
      next_hop_in_ip_address = optional(string)
      }
    ))
  }))
  default = {
    "default" = {
      bgp_route_propagation_enabled = true
      default_routes = {
        "route-azure-internet" = {
          address_prefix = "AzureCloud"
          next_hop_type  = "Internet"
        }
        "route-to-newrelic_eu1" = {
          address_prefix = "185.221.84.0/22"
          next_hop_type  = "Internet"
        }
        "route_to_newrelic_eu2" = {
          address_prefix = "152.38.128.0/19"
          next_hop_type  = "Internet"
        }
      }
    }
  }
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
  default = {
    "AllowVnetInBound" = {
      description                = "Allow VNet Inbound"
      priority                   = 100
      direction                  = "Inbound"
      access                     = "Allow"
      protocol                   = "*"
      source_port_range          = "*"
      destination_port_range     = "*"
      source_address_prefix      = "VirtualNetwork"
      destination_address_prefix = "VirtualNetwork"
    },
    "AllowAzureLoadBalancerInBound" = {
      description                = "Allow Azure Load Balancer Inbound"
      priority                   = 200
      direction                  = "Inbound"
      access                     = "Allow"
      protocol                   = "*"
      source_port_range          = "*"
      destination_port_range     = "*"
      source_address_prefix      = "AzureLoadBalancer"
      destination_address_prefix = "*"
    },
    "DenyAllInBound" = {
      description                = "Deny all Inbound"
      priority                   = 4096
      direction                  = "Inbound"
      access                     = "Deny"
      protocol                   = "*"
      source_port_range          = "*"
      destination_port_range     = "*"
      source_address_prefix      = "*"
      destination_address_prefix = "*"
    },
    "AllowVnetOutBound" = {
      description                = "Allow VNet Outbound"
      priority                   = 100
      direction                  = "Outbound"
      access                     = "Allow"
      protocol                   = "*"
      source_port_range          = "*"
      destination_port_range     = "*"
      source_address_prefix      = "VirtualNetwork"
      destination_address_prefix = "VirtualNetwork"
    },
    "AllowInternetOutBound" = {
      description                = "Allow Internet Outbound"
      priority                   = 200
      direction                  = "Outbound"
      access                     = "Allow"
      protocol                   = "*"
      source_port_range          = "*"
      destination_port_range     = "443"
      source_address_prefix      = "*"
      destination_address_prefix = "Internet"
    },
    "AllowInternetOutBound_80" = {
      description                = "Allow Internet Outbound"
      priority                   = 201
      direction                  = "Outbound"
      access                     = "Allow"
      protocol                   = "*"
      source_port_range          = "*"
      destination_port_range     = "80"
      source_address_prefix      = "*"
      destination_address_prefix = "Internet"
    },
    "DenyAllOutBound" = {
      description                = "Deny all Outbound"
      priority                   = 4096
      direction                  = "Outbound"
      access                     = "Deny"
      protocol                   = "*"
      source_port_range          = "*"
      destination_port_range     = "*"
      source_address_prefix      = "*"
      destination_address_prefix = "*"
    }
  }
}
