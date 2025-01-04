locals {
  subnet_id                = data.azurerm_subnet.current.id
  public_ip_address_id     = data.azurerm_public_ip.current.id
  express_route_circuit_id = var.express_route_name != null ? data.azurerm_express_route_circuit.current[0].id : null
}
