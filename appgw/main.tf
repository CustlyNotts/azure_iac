resource "azurerm_user_assigned_identity" "current" {
  resource_group_name = var.resource_group_name
  location            = data.azurerm_resource_group.current.location
  name                = lower("${var.name}")
  lifecycle {
    ignore_changes = [
      tags
    ]
    prevent_destroy = false
  }
}

resource "azurerm_key_vault_access_policy" "current" {
  provider     = azurerm.key_vault
  count        = var.key_vault_name != null ? 1 : 0
  key_vault_id = data.azurerm_key_vault.current.id
  tenant_id    = azurerm_user_assigned_identity.current.tenant_id
  object_id    = azurerm_user_assigned_identity.current.principal_id #data.azuread_service_principal.current.object_id

  key_permissions = [
    "Get",
    "List"
  ]

  secret_permissions = [
    "Get",
    "List"
  ]

  certificate_permissions = [
    "Get",
    "List"
  ]
  depends_on = [azurerm_user_assigned_identity.current]

  lifecycle {
    prevent_destroy = false
  }
}
resource "azurerm_public_ip" "current" {
  name                = coalesce(var.public_ip_name, "${var.name}-ip")
  location            = data.azurerm_resource_group.current.location
  resource_group_name = var.resource_group_name
  allocation_method   = var.sku.tier == "Standard" ? "Dynamic" : "Static"
  sku                 = var.sku.tier == "Standard" ? "Basic" : "Standard"
  zones               = var.zones
  tags                = var.tags
  ip_tags             = var.ip_tags
  lifecycle {
    ignore_changes = [
    ]
    prevent_destroy = false
  }
  depends_on = [azurerm_user_assigned_identity.current]
}

resource "azurerm_application_gateway" "current" {
  name                = lower("${var.name}")
  resource_group_name = var.resource_group_name
  location            = data.azurerm_resource_group.current.location
  zones               = var.zones
  enable_http2        = var.enable_http2

  depends_on = [
    azurerm_user_assigned_identity.current,
    azurerm_key_vault_access_policy.current,
  ]

  sku {
    name     = var.sku.name
    tier     = var.sku.tier
    capacity = var.autoscale_configuration == null ? var.sku.capacity : null
  }
  firewall_policy_id = var.firewall_policy_id != null ? var.firewall_policy_id : null
  gateway_ip_configuration {
    name      = local.gateway_ip_configuration_name
    subnet_id = var.subnet_id
  }
  #   frontend_ip_configuration {
  #     name                 = local.frontend_ip_configuration_name
  #     public_ip_address_id = azurerm_public_ip.current.id
  # #    private_ip_address   = var.private_ip_address
  # #    private_ip_address_allocation = var.private_ip_address_allocation
  #   }
  dynamic "frontend_ip_configuration" {
    for_each = var.enable_private ? toset(["private", "public"]) : toset(["public"])

    content {
      name                          = frontend_ip_configuration.key == "private" ? "private_fip" : local.frontend_ip_configuration_name
      public_ip_address_id          = frontend_ip_configuration.key == "public" ? azurerm_public_ip.current.id : ""
      private_ip_address            = frontend_ip_configuration.key == "private" ? var.private_ip_address : ""
      private_ip_address_allocation = frontend_ip_configuration.key == "public" ? null : var.private_ip_address_allocation
      subnet_id                     = frontend_ip_configuration.key == "private" ? var.subnet_id : ""
    }
  }
  # frontend_ip_configuration {
  #   name                 = "${local.frontend_ip_configuration_name}_private"
  #   public_ip_address_id = azurerm_public_ip.current.id
  #   private_ip_address   = var.private_ip_address
  #  private_ip_address_allocation = var.private_ip_address_allocation
  # }
  #  frontend_ip_configuration {
  #   name                 = "${local.frontend_ip_configuration_name}"
  #   public_ip_address_id = azurerm_public_ip.current.id
  #   #private_ip_address   = var.private_ip_address
  #   #private_ip_address_allocation = var.private_ip_address_allocation
  # }
  frontend_port {
    name = local.frontend_port_name_80
    port = 80
  }
  frontend_port {
    name = local.frontend_port_name_443
    port = 443
  }
  dynamic "backend_address_pool" {
    for_each = var.backend_address_pools
    content {
      name         = backend_address_pool.value.name
      fqdns        = backend_address_pool.value.fqdns
      ip_addresses = backend_address_pool.value.ip_addresses
    }
  }
  dynamic "autoscale_configuration" {
    for_each = var.autoscale_configuration != null ? [var.autoscale_configuration] : []
    content {
      max_capacity = var.autoscale_configuration.max_capacity
      min_capacity = var.autoscale_configuration.min_capacity
    }
  }
  dynamic "backend_http_settings" {
    for_each = var.backend_http_settings
    content {
      name                                = backend_http_settings.value.name
      cookie_based_affinity               = lookup(backend_http_settings.value, "cookie_based_affinity", "Disabled")
      affinity_cookie_name                = lookup(backend_http_settings.value, "affinity_cookie_name", null)
      path                                = lookup(backend_http_settings.value, "path", "/")
      port                                = lookup(backend_http_settings.value, "port", backend_http_settings.value.enable_https ? 443 : 80)
      probe_name                          = lookup(backend_http_settings.value, "probe_name", null)
      protocol                            = backend_http_settings.value.enable_https ? "Https" : "Http"
      request_timeout                     = lookup(backend_http_settings.value, "request_timeout", 30)
      host_name                           = backend_http_settings.value.host_name
      pick_host_name_from_backend_address = lookup(backend_http_settings.value, "pick_host_name_from_backend_address", false)
    }
  }
  dynamic "http_listener" {
    for_each = var.http_listeners
    content {
      name                           = http_listener.value.name
      frontend_ip_configuration_name = lookup(http_listener.value, "frontend_ip_configuration_name", local.frontend_ip_configuration_name)
      frontend_port_name             = http_listener.value.ssl_certificate_name == null ? "${local.frontend_port_name_80}" : "${local.frontend_port_name_443}"
      host_name                      = lookup(http_listener.value, "host_name", null)
      host_names                     = lookup(http_listener.value, "host_names", null)
      protocol                       = http_listener.value.ssl_certificate_name == null ? "Http" : "Https"
      require_sni                    = http_listener.value.ssl_certificate_name != null ? http_listener.value.require_sni : null
      ssl_certificate_name           = http_listener.value.ssl_certificate_name
      firewall_policy_id             = http_listener.value.firewall_policy_id
      ssl_profile_name               = http_listener.value.ssl_profile_name

    }
  }
  dynamic "redirect_configuration" {
    for_each = var.redirect_configuration
    iterator = redirect
    content {
      name                 = redirect.value.name
      redirect_type        = redirect.value.redirect_type
      target_listener_name = redirect.value.target_listener_name
      target_url           = redirect.value.target_url
      include_path         = redirect.value.include_path
      include_query_string = redirect.value.include_query_string
    }
  }
  dynamic "request_routing_rule" {
    for_each = var.request_routing_rules
    content {
      name                        = request_routing_rule.value.name
      rule_type                   = lookup(request_routing_rule.value, "rule_type", "Basic")
      http_listener_name          = request_routing_rule.value.http_listener_name
      backend_address_pool_name   = request_routing_rule.value.redirect_configuration_name == null ? request_routing_rule.value.backend_address_pool_name : null
      backend_http_settings_name  = request_routing_rule.value.redirect_configuration_name == null ? request_routing_rule.value.backend_http_settings_name : null
      redirect_configuration_name = lookup(request_routing_rule.value, "redirect_configuration_name", null)
      rewrite_rule_set_name       = lookup(request_routing_rule.value, "rewrite_rule_set_name", null)
      url_path_map_name           = lookup(request_routing_rule.value, "url_path_map_name", null)
      priority                    = request_routing_rule.value.priority
    }
  }
  dynamic "ssl_certificate" {
    for_each = var.ssl_certificates
    content {
      name                = ssl_certificate.value.name
      data                = ssl_certificate.value.key_vault_secret_id == null ? filebase64(ssl_certificate.value.data) : null
      password            = ssl_certificate.value.key_vault_secret_id == null ? ssl_certificate.value.password : null
      key_vault_secret_id = lookup(ssl_certificate.value, "key_vault_secret_id", null)
    }
  }
  dynamic "probe" {
    for_each = var.health_probes
    content {
      name                                      = probe.value.name
      host                                      = lookup(probe.value, "host", "127.0.0.1")
      interval                                  = lookup(probe.value, "interval", 30)
      protocol                                  = lookup(probe.value, "protocol", "Http")
      path                                      = lookup(probe.value, "path", "/")
      timeout                                   = lookup(probe.value, "timeout", 30)
      unhealthy_threshold                       = lookup(probe.value, "unhealthy_threshold", 3)
      port                                      = lookup(probe.value, "port", 443)
      pick_host_name_from_backend_http_settings = lookup(probe.value, "pick_host_name_from_backend_http_settings", false)
      minimum_servers                           = lookup(probe.value, "minimum_servers", 0)
      dynamic "match" {
        for_each = probe.value.match != null ? [probe.value.match] : []
        content {
          body        = probe.value.match.body
          status_code = probe.value.match.status_code
        }
      }
    }
  }
  dynamic "url_path_map" {
    for_each = var.url_path_maps
    content {
      name                                = url_path_map.value.name
      default_backend_address_pool_name   = url_path_map.value.default_redirect_configuration_name == null ? url_path_map.value.default_backend_address_pool_name : null
      default_backend_http_settings_name  = url_path_map.value.default_redirect_configuration_name == null ? url_path_map.value.default_backend_http_settings_name : null
      default_redirect_configuration_name = lookup(url_path_map.value, "default_redirect_configuration_name", null)
      default_rewrite_rule_set_name       = lookup(url_path_map.value, "default_rewrite_rule_set_name", null)

      dynamic "path_rule" {
        for_each = lookup(url_path_map.value, "path_rules")
        content {
          name                        = path_rule.value.name
          backend_address_pool_name   = path_rule.value.backend_address_pool_name
          backend_http_settings_name  = path_rule.value.backend_http_settings_name
          paths                       = flatten(path_rule.value.paths)
          redirect_configuration_name = lookup(path_rule.value, "redirect_configuration_name", null)
          rewrite_rule_set_name       = lookup(path_rule.value, "rewrite_rule_set_name", null)
          firewall_policy_id          = lookup(path_rule.value, "firewall_policy_id", null)
        }
      }
    }
  }
  dynamic "waf_configuration" {
    for_each = var.waf_configuration != null ? [var.waf_configuration] : []
    content {
      enabled                  = true
      firewall_mode            = lookup(waf_configuration.value, "firewall_mode", "Detection")
      rule_set_type            = "OWASP"
      rule_set_version         = lookup(waf_configuration.value, "rule_set_version", "3.1")
      file_upload_limit_mb     = lookup(waf_configuration.value, "file_upload_limit_mb", 100)
      request_body_check       = lookup(waf_configuration.value, "request_body_check", true)
      max_request_body_size_kb = lookup(waf_configuration.value, "max_request_body_size_kb", 128)

      dynamic "disabled_rule_group" {
        for_each = waf_configuration.value.disabled_rule_group
        content {
          rule_group_name = disabled_rule_group.value.rule_group_name
          rules           = disabled_rule_group.value.rules
        }
      }

      dynamic "exclusion" {
        for_each = waf_configuration.value.exclusion
        content {
          match_variable          = exclusion.value.match_variable
          selector_match_operator = exclusion.value.selector_match_operator
          selector                = exclusion.value.selector
        }
      }
    }
  }
  identity {
    type         = "UserAssigned"
    identity_ids = [azurerm_user_assigned_identity.current.id]
  }
  lifecycle {
    ignore_changes = [
      tags,
      #ssl_certificate
    ]
    prevent_destroy = false
  }
}
