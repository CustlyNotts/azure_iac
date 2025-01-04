subscription_id                            = "56a6b4b1-7256-4834-9817-e27c75f1ae05"
network_security_group_resource_group_name = "rg-turkeyprod"
network_security_group_name                = "vm-turkeyprod-activemq-nsg"

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
  "ENV" : "PROD",
  "Apllication name" : "YARMICA(TURKEY)",
  "Apllication Owner" : "Daniel.Stuart@dtworld.ae/Pradeesh.raju@dtworld.ae",
  "Application Name" : "Turkey prod ",
  "Application Owner" : "Daniel Stuart / pradeesh raju"
}
