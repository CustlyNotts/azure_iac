resource "azurerm_public_ip" "ip" {
  for_each = toset(var.allocate_public_ip ? ["enabled"] : [])

  location            = var.location
  name                = var.ip_name
  resource_group_name = var.resource_group_name

  sku               = var.public_ip_sku
  allocation_method = var.public_ip_allocation_method
  domain_name_label = var.public_ip_custom_domain_name_label == null ? null : coalesce(var.public_ip_custom_domain_name_label, var.lb_name)

  zones = var.zones

  tags = coalesce(var.tags, data.azurerm_resource_group.current.tags)

  lifecycle {
    prevent_destroy = true
  }
}

resource "azurerm_lb" "lb" {
  location            = var.location
  name                = var.lb_name
  resource_group_name = var.resource_group_name

  sku = var.sku_name

  dynamic "frontend_ip_configuration" {
    for_each = azurerm_public_ip.ip
    content {
      name                 = var.ip_configuration_name
      public_ip_address_id = frontend_ip_configuration.value.id
    }
  }

  dynamic "frontend_ip_configuration" {
    for_each = var.lb_frontend_ip_configurations
    iterator = fipconf

    content {
      name = fipconf.key

      subnet_id                     = fipconf.value.subnet_id
      private_ip_address            = fipconf.value.private_ip_address
      private_ip_address_allocation = fipconf.value.private_ip_address_allocation
      private_ip_address_version    = fipconf.value.private_ip_address_version

      public_ip_address_id = fipconf.value.public_ip_address_id
      public_ip_prefix_id  = fipconf.value.public_ip_prefix_id

      zones = fipconf.value.zones != null ? fipconf.value.zones : var.zones
    }
  }

  tags = coalesce(var.tags, data.azurerm_resource_group.current.tags)

  lifecycle {
    prevent_destroy = true
  }
}

resource "azurerm_lb_backend_address_pool" "default_pool" {
  for_each = var.backend_address_pools

  loadbalancer_id = azurerm_lb.lb.id
  name            = each.value.name
}

resource "azurerm_lb_outbound_rule" "outbound" {
  count = var.enable_nat ? 1 : 0

  name = "default"

  backend_address_pool_id  = azurerm_lb_backend_address_pool.default_pool[count.index].id
  loadbalancer_id          = azurerm_lb.lb.id
  protocol                 = var.nat_protocol
  allocated_outbound_ports = var.nat_allocated_outbound_ports

  frontend_ip_configuration {
    name = var.ip_configuration_name
  }
}


resource "azurerm_lb_rule" "lb_rule" {
  for_each = var.lb_rules == null ? {} : var.lb_rules

  loadbalancer_id                = azurerm_lb.lb.id
  name                           = each.value.name
  protocol                       = each.value.protocol
  frontend_port                  = each.value.frontend_port
  backend_port                   = each.value.backend_port
  frontend_ip_configuration_name = each.value.frontend_ip_configuration_name
  backend_address_pool_ids       = lookup(each.value, "backend_address_pool_ids", [])
  probe_id                       = lookup(each.value, "probe_id", null)
  enable_floating_ip             = lookup(each.value, "enable_floating_ip", null)
  idle_timeout_in_minutes        = lookup(each.value, "idle_timeout_in_minutes", 5)
  load_distribution              = lookup(each.value, "load_distribution", null)
  disable_outbound_snat          = lookup(each.value, "disable_outbound_snat", false)
  enable_tcp_reset               = lookup(each.value, "enable_tcp_reset", true)
}



resource "azurerm_lb_probe" "lb_probe" {
  for_each = var.lb_probes == null ? {} : var.lb_probes

  loadbalancer_id     = azurerm_lb.lb.id
  name                = each.value.name
  port                = each.value.port
  protocol            = lookup(each.value, "protocol", "Tcp")
  probe_threshold     = lookup(each.value, "probe_threshold", null)
  request_path        = lookup(each.value, "request_path", null)
  interval_in_seconds = lookup(each.value, "interval_in_seconds", 5)
  number_of_probes    = lookup(each.value, "number_of_probes", null)
}



