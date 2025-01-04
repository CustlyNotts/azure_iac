variable "subscription_id" {
  type = string
}
variable "cdn_profile_name" {
  type = string
}
variable "location" {
  type = string
}
variable "resource_group_name" {
  type = string
}
variable "sku" {
  type     = string
  default  = "Standard_Microsoft"
  nullable = false
  validation {
    condition     = contains(["Standard_Akamai", "Standard_Microsoft", "Standard_Verizon", "Premium_Verizon"], var.sku)
    error_message = "The sku must be one of the following: Standard_Akamai, Standard_Microsoft, Standard_Verizon, Premium_Verizon."
  }
}


variable "cdn_profile" {
  type    = bool
  default = true
}

variable "tags" {
  type    = map(string)
  default = {}
}
variable "endpointtags" {
  type    = map(string)
  default = {}
}
variable "cdn_endpoint_name" {
  type = string
}
variable "http_allowed" {
  type    = bool
  default = true
}
variable "https_allowed" {
  type    = bool
  default = true
}

#Query_string_behaviour can be UseQueryString , IgnoreQueryString, BypassCaching 
variable "querystring_caching_behaviour" {
  type     = string
  default  = "UseQueryString"
  nullable = false
  validation {
    condition     = contains(["UseQueryString", "IgnoreQueryString", "BypassCaching", "NotSet"], var.querystring_caching_behaviour)
    error_message = "The querystring_behaviour must be one of the following: UseQueryString, IgnoreQueryString, BypassCaching"
  }
}


variable "origin" {
  type = object({
    host_name  = string
    http_port  = optional(number)
    https_port = optional(number)
    name       = string
  })
}


variable "origin_host_header" {
  type    = string
  default = null
}

variable "origin_path" {
  type    = string
  default = null
}

variable "probe_path" {
  type    = string
  default = null
}

variable "compression_enabled" {
  type    = bool
  default = false
}

variable "content_types_to_compress" {
  type        = list(string)
  default     = null
  description = <<-EOT
    "application/eot",
    "application/font",
    "application/font-sfnt",
    "application/javascript",
    "application/json",
    "application/opentype",
    "application/otf",
    "application/pkcs7-mime",
    "application/truetype",
    "application/ttf",
    "application/vnd.ms-fontobject",
    "application/xhtml+xml",
    "application/xml",
    "application/xml+rss",
    "application/x-font-opentype",
    "application/x-font-truetype",
    "application/x-font-ttf",
    "application/x-httpd-cgi",
    "application/x-javascript",
    "application/x-mpegurl",
    "application/x-opentype",
    "application/x-otf",
    "application/x-perl",
    "application/x-ttf",
    "font/eot",
    "font/ttf",
    "font/otf",
    "font/opentype",
    "image/svg+xml",
    "text/css",
    "text/csv",
    "text/html",
    "text/javascript",
    "text/js",
    "text/plain",
    "text/richtext",
    "text/tab-separated-values",
    "text/xml",
    "text/x-script",
    "text/x-component",
    "text/x-java-source",
  ]
  EOT
}

variable "optimization_type" {
  type    = string
  default = null
  #validation {
  #  condition     = contains(["DynamicSiteAcceleration", "GeneralMediaStreaming", "GeneralWebDelivery", "LargeFileDownload", "VideoOnDemandMediaStreaming"], var.optimization_type)
  #  error_message = "The optimization_type must be one of the following: DynamicSiteAcceleration, GeneralMediaStreaming, GeneralWebDelivery, LargeFileDownload and VideoOnDemandMediaStreaming"
  #}
}

variable "geo_filter" {
  type = object({
    action        = string
    country_codes = list(any)
    relative_path = string
  })
  default = null
}

/* variable "originGroups" {
  default  = []
  type      = object({
    name    =   string
    properties                = optional(object({ 
      healthProbeSettings       = optional(object({
        probeIntervalInSeconds  = optional(number)
        probePath               = optional(string)
        probeProtocol           = optional(string)
        probeRequestType        = optional(string)

      origins                   = list(object({
        id                      = optional(string)
      })
      responseBasedOriginErrorDetectionSettings = optional(object({
         httpErrorRanges         = optional(list(object({
           begin                   = optional(number)      
           end                     = optional(number) 
       })}      responseBasedDetectedErrorTypes  = optional(string)
      responseBasedFailoverThresholdPercentage = optional(string)
    }))
    trafficRestorationTimeToHealedOrNewEndpointsInMinutes  = optional(number)
  }))
} */


variable "global_delivery_rule" {
  default = null
  type = map(object({
    cache_expiration_action = optional(map(object({
      behavior = string
      duration = optional(string)
    })))
    cache_key_query_string_action = optional(map(object({
      behavior   = string
      parameters = optional(string)
    })))
    modify_request_header_action = optional(map(object({
      action = string
      name   = string
      value  = optional(string)
    })))
    modify_response_header_action = optional(map(object({
      action = string
      name   = string
      value  = optional(string)
    })))
    url_redirect_action = optional(map(object({
      fragment      = optional(string)
      hostname      = optional(string)
      path          = optional(string)
      protocol      = optional(string)
      query_string  = optional(string)
      redirect_type = string
    })))
    url_rewrite_action = optional(map(object({
      destination             = string
      preserve_unmatched_path = optional(bool)
      source_pattern          = string
    })))
  }))
}


variable "delivery_rule" {
  default = null
  type = map(object({
    name  = string
    order = number
    cache_expiration_action = optional(map(object({
      behavior = string
      duration = optional(string)
    })), null)
    cache_key_query_string_action = optional(map(object({
      behavior   = string
      parameters = optional(string)
    })), null)
    cookies_condition = optional(map(object({
      match_values     = optional(string)
      negate_condition = optional(bool)
      operator         = string
      selector         = string
      transforms       = optional(list(string))
    })), null)
    device_condition = optional(map(object({
      match_values     = set(string)
      negate_condition = optional(bool)
      operator         = optional(string)
    })), null)
    http_version_condition = optional(map(object({
      match_values     = set(string)
      negate_condition = optional(bool)
      operator         = optional(string)
    })), null)
    modify_request_header_action = optional(map(object({
      name   = string
      action = string
      value  = optional(string)
    })), null)
    modify_response_header_action = optional(map(object({
      name   = string
      action = string
      value  = optional(string)
    })), null)
    post_arg_condition = optional(map(object({
      match_values     = optional(set(string))
      negate_condition = optional(bool)
      operator         = string
      selector         = string
      transforms       = optional(list(string))
    })), null)
    query_string_condition = optional(map(object({
      match_values     = optional(set(string))
      negate_condition = optional(bool)
      operator         = string
      transforms       = optional(list(string))
    })), null)
    remote_address_condition = optional(map(object({
      match_values     = optional(set(string))
      negate_condition = optional(bool)
      operator         = string
    })), null)
    request_body_condition = optional(map(object({
      match_values     = optional(set(string))
      negate_condition = optional(bool)
      operator         = string
      transforms       = optional(list(string))
    })))
    request_header_condition = optional(map(object({
      match_values     = optional(set(string))
      negate_condition = optional(bool)
      operator         = string
      selector         = string
      transforms       = optional(list(string))
    })))
    request_method_condition = optional(map(object({
      match_values     = set(string)
      negate_condition = optional(bool)
      operator         = string
    })), null)
    request_scheme_condition = optional(map(object({
      match_values     = set(string)
      negate_condition = optional(bool)
      operator         = optional(string)
    })), null)
    request_uri_condition = optional(map(object({
      match_values     = optional(set(string))
      negate_condition = optional(bool)
      operator         = string
      transforms       = optional(list(string))
    })), null)
    url_file_extension_condition = optional(map(object({
      match_values     = optional(set(string))
      negate_condition = optional(bool)
      operator         = string
      transforms       = optional(list(string))
    })), null)
    url_file_name_condition = optional(map(object({
      match_values     = optional(set(string))
      negate_condition = optional(bool)
      operator         = string
      transforms       = optional(list(string))
    })), null)
    url_path_condition = optional(map(object({
      match_values     = optional(set(string))
      negate_condition = optional(bool)
      operator         = string
      transforms       = optional(list(string))
    })), null)
    url_redirect_action = optional(map(object({
      fragment      = optional(string)
      hostname      = optional(string)
      path          = optional(string)
      protocol      = optional(string)
      query_string  = optional(string)
      redirect_type = string
    })), null)
    url_rewrite_action = optional(map(object({
      destination             = string
      preserve_unmatched_path = optional(bool)
      source_pattern          = string
    })), null)
  }))
}


#####Custom Domain Vars#######

variable "custom_domain_enabled" {
  type    = bool
  default = false
}
variable "custom_domain_list" {
  type = map(object({
    custom_domain_name     = string
    custom_cdn_endpoint_id = optional(string)
    custom_hostname        = optional(string)
    custom_cdn_managed_https = optional(object({
      certificate_type = string
      protocol_type    = string
      tls_version      = optional(string)
    }), null)
    user_managed_https = optional(object({
      key_vault_certificate_id = optional(string, null)
      key_vault_secret_id      = optional(string, null)
      tls_version              = optional(string)
    }), null)
  }))
  default = null
}
####Custom Domain Vars#########
