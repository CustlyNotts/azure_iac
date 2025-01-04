subscription_id     = <subscription_id>
network_security_group_name                = "nsg-qlprod-mysql"
network_security_group_resource_group_name = "rg-qlprod"
nsg_rules = {
  "Port_3306" = {
    description                = "Port_3306"
    priority                   = 1010
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "3306"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
  "default-allow-ssh" = {
    description                = "default-allow-ssh"
    priority                   = 1000
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}
