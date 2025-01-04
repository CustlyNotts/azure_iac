subscription_id                            = "c65610b4-f532-47fb-b450-632f88d21fa8"
network_security_group_resource_group_name = "rg-cargoescanada-preprod"
network_security_group_name                = "vm-test-reports-nsg"

nsg_rules = {
  "RDP" = {
    description                = ""
    priority                   = 300
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "3389"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}

tags = {
  "Application Name" : "Mawani CNS",
  "Application Owner" : "Daniel Stuart",
  "ENV" : "PROD"
}