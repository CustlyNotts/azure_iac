subscription_id                            = "c65610b4-f532-47fb-b450-632f88d21fa8"
network_security_group_resource_group_name = "rg-cargoscanada-test"
network_security_group_name                = "vm-temp-networktest-nsg"


nsg_rules = {
  "http" = {
    description                = ""
    priority                   = 1030
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "80"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
    }, "ssh" = {
    description                = ""
    priority                   = 1020
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
    }, "https" = {
    description                = ""
    priority                   = 1010
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
  "Application Name" : "cargoes canada UAT",
  "Application Owner" : "Danial",
  "ENV" : "TESTING"
}