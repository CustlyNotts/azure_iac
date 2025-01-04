locals {
  frontend_port_name_80          = var.frontend_port_name_80
  frontend_port_name_443         = var.frontend_port_name_443
  frontend_ip_configuration_name = coalesce(var.frontend_ip_configuration_name, "${var.name}-feip")
  gateway_ip_configuration_name  = coalesce(var.gateway_ip_configuration_name, "${var.name}-gwipc")
}
