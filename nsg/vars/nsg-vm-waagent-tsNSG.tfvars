subscription_id                            = "56a6b4b1-7256-4834-9817-e27c75f1ae05"
network_security_group_resource_group_name = "rg-dga-customsapp"
network_security_group_name                = "vm-waagent-tsNSG"

nsg_rules = {
  "default-allow-ssh" = {
    description                = ""
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

tags = {
  "Application Name" : "DGA customs ",
  "Application Owner" : "Hussain ",
  "ENV" : "DEV"
}