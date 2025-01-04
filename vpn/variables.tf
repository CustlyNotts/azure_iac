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
  default = "Basic"
}

variable "subnet" {
  type    = string
  default = null
}

variable "virtual_network_name" {
  type    = string
  default = null
}

#####Start#####VPN Gateway#####

variable "type" {
  type    = string
  default = "Vpn"
  validation {
    condition     = contains(["Vpn", "ExpressRoute"], var.type)
    error_message = "VPN type should be \"VPN\" and \"ExpressRoute\""
  }
}

variable "active_active" {
  type    = bool
  default = false
}

variable "default_local_network_gateway_id" {
  type    = string
  default = null
}

variable "edge_zone" {
  type    = string
  default = null
}

variable "enable_bgp" {
  type    = bool
  default = false
}

variable "generation" {
  type    = string
  default = null
}

variable "id" {
  type    = string
  default = null
}

variable "name" {
  type = string
}

variable "private_ip_address_enabled" {
  type    = bool
  default = null
}

variable "vpn_type" {
  type    = string
  default = "RouteBased"
  validation {
    condition     = contains(["RouteBased", "PolicyBased"], var.vpn_type)
    error_message = "VPN type should be \"RouteBased\" and \"PolicyBased\""
  }
}


variable "tags" {
  type    = map(string)
  default = {}
}



variable "bgp_settings" {
  type = object({
    asn = optional(number)
    peering_addresses = optional(object({
      ip_configuration_name = optional(string)
      apipa_addresses       = optional(list(string))
    }))
    peer_weight = optional(number)
  })
  default = null
}

variable "custom_route" {
  type = object({
    address_prefixes = optional(list(string))
  })
  default = null
}

variable "ip_configuration" {
  type = object({
    name                          = optional(string, "default")
    private_ip_address_allocation = optional(string)
    public_ip_address_id          = string
    subnet_id                     = string
  })
}

variable "timeouts" {
  type = object({
    create = optional(string)
    delete = optional(string)
    read   = optional(string)
    update = optional(string)
  })
  default = null
}

variable "vpn_client_configuration" {
  type = object({
    aad_audience          = optional(string)
    aad_issuer            = optional(string)
    aad_tenant            = optional(string)
    address_space         = list(string)
    radius_server_address = optional(string)
    radius_server_secret  = optional(string)
    vpn_client_protocols  = optional(set(string))
    revoked_certificate = object({
      name       = string
      thumbprint = string
    })
    root_certificate = object({
      name             = string
      public_cert_data = string
    })
  })
  default = null
}

#####END#####VPN Network Gateway#####

#####Start#####Connections#####
variable "connection_list" {
  type = map(object({
    connection_name                    = string
    authorization_key                  = optional(string, null)
    connection_protocol                = optional(string, null)
    dpd_timeout_seconds                = optional(number, null)
    connection_enable_bgp              = optional(bool, false)
    express_route_circuit_id           = optional(string, null)
    express_route_gateway_bypass       = optional(string, null)
    local_azure_ip_address_enabled     = optional(string, false)
    local_network_gateway_id           = optional(string, null)
    peer_virtual_network_gateway_id    = optional(string, null)
    routing_weight                     = optional(number, 0)
    shared_key                         = optional(string, null)
    connection_tags                    = optional(map(string), null)
    connection_type                    = optional(string)
    use_policy_based_traffic_selectors = optional(bool, false)
    virtual_network_gateway_id         = optional(string, null)
    ipsec_policy = optional(object({
      dh_group         = string
      ike_encryption   = string
      ike_integrity    = string
      ipsec_encryption = string
      ipsec_integrity  = string
      pfs_group        = string
      sa_datasize      = optional(number)
      sa_lifetime      = optional(number)
    }), null)
    connection_timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }), null)
    traffic_selector_policy = optional(object({
      local_address_cidrs  = string
      remote_address_cidrs = string
    }), null)
  }))
}

#####END#####Connections#####


#####Start#####VPN Gateway Connection######
#variable "authorization_key" {
#  type = string
#  default = null
#}
#
#variable "connection_protocol" {
#  type = string
#  default = null
#}
#
#variable "dpd_timeout_seconds" {
#  type  = number
#  default = null
#}
#
#variable "connection_enable_bgp" {
#  type = bool
#  default = false
#}
#
#variable "express_route_circuit_id" {
#  type = string
#  default = null
#}
#
#variable "express_route_gateway_bypass" {
#  type =  bool
#  default = false
#}
#
#variable "local_azure_ip_address_enabled" {
#  type = bool
#  default = false
#}
#
#variable "local_network_gateway_id" {
#  type = string
#  default = null
#}
#
#variable "peer_virtual_network_gateway_id" {
#  type = string 
#  default = null
#}
#
#variable "connection_name" {
#  type = string
#}
#
#variable "routing_weight" {
#  type = number
#  default = 0
#}
#
#variable "shared_key"  {
#  type  = string
#  default = null
#}
#
#variable "connection_tags" {
#  type  = map(string)
#  default = null
#}
#
#variable "connection_type" {
#  type = string
#  description = "Connection type is either IPsec/ExpressRoute/Vnet2Vnet"
#}
#
#variable "use_policy_based_traffic_selectors" {
#  type = bool
#  default = false
#}
#
#variable "virtual_network_gateway_id" {
#  type = string
#  default = null
#}
#
#
#variable "ipsec_policy" {
#  type = object({
#    dh_group = string
#    ike_encryption = string
#    ike_integrity = string
#    ipsec_encryption = string
#    ipsec_integrity = string
#    pfs_group = string
#    sa_datasize = optional(number)
#    sa_lifetime = optional(number) 
#  })
#  default = null
#}
#
#
#variable "connection_timeouts" {
#  type = object({
#    create  = optional(string)
#    delete  = optional(string)
#    read    = optional(string)
#    update  = optional(string)
#  })
#  default = null
#}
#
#
#variable "traffic_selector_policy" {
#   type = object({
#     local_address_cidrs = string
#     remote_address_cidrs = string
#   })
#   default = null
#} 
#####End#####VPN Gateway Connection#####

#####Start#####Local Network Gateway - Map#####
variable "local_gateway_connections" {
  type = map(object({
    gateway_address = optional(string, null)
    address_space   = list(string)
    gateway_fqdn    = optional(string, null)
    local_bgp_settings = optional(object({
      asn                 = string
      bgp_peering_address = string
      peer_weight         = optional(number)
    }), null)
    localgateway_name = string
    localgw_tags      = optional(map(any), null)
  }))
  default = null
}





#####Start#####Local Network Gateway - Map#####




#####Start#####Local Network Gateway#####

#variable "gateway_address" {
#  type = string
#  default = null
#}
#
#variable "address_space" {
#  type = list(string)
#  default = []
#}
#
#variable "gateway_fqdn" {
#  type = string
#  default = null
#}
#
#variable "local_bgp_settings" {
#  type = object({
#    asn = string
#    bgp_peering_address = string
#    peer_weight = optional(number)
#  })
#  default = null
#}
#
#variable "localgateway_name" {
#  type = string
#}
#
#variable "localgw_tags" {
#  type = map(any)
#  default = null
#}

#####End#####Local Network Gateway#####

#####Start#####virtual network gateway rule#####

variable "nat_name" {
  type    = string
  default = null
}

variable "external_mapping" {
  type = object({
    address_space = string
    port_range    = optional(string)
  })
  default = null
}


variable "internal_mapping" {
  type = object({
    address_space = string
    port_range    = optional(string)
  })
  default = null
}

variable "ip_configuration_id" {
  type    = string
  default = null
}

variable "mode" {
  type    = string
  default = null
}

variable "nat_type" {
  type    = string
  default = null
}

variable "nat_enabled" {
  type    = bool
  default = false
}
#####END#####virtual network gateway rule#####

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

variable "express_route_rg" {
  type    = string
  default = null
}

variable "express_route_name" {
  type    = string
  default = null
}
