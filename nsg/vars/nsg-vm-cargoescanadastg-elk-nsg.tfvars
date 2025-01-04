subscription_id                            = "c65610b4-f532-47fb-b450-632f88d21fa8"
network_security_group_resource_group_name = "rg-cargoescanadastg"
network_security_group_name                = "vm-cargoescanadastg-elk-nsg"


nsg_rules = {
  "SSH" = {
    description                = ""
    priority                   = 1030
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
    }, "HTTP" = {
    description                = ""
    priority                   = 1010
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "80"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
    }, "HTTPS" = {
    description                = ""
    priority                   = 1020
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "443"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}
tags = {
  "Application Name" : "Cargoes Canada ",
  "Application Owner" : "Daniel Stuart",
  "ENV" : "DEV"
}