subscription_id                            = "c65610b4-f532-47fb-b450-632f88d21fa8"
network_security_group_resource_group_name = "rg-cargoescanadahub-build"
network_security_group_name                = "vm-support-nsg"


nsg_rules = {
  "SSH" = {
    description                = ""
    priority                   = 300
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}

tags = {
  "Application Name" : "Cargoes Canada ",
  "Application Owner" : "Daniel Stuart",
  "ENV" : "DEV"
}