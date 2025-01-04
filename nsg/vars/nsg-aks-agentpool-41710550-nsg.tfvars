subscription_id     = <subscription_id>
network_security_group_name                = "aks-agentpool-41710550-nsg"
network_security_group_resource_group_name = "rg-wlp-shared-dev"
nsg_rules = {
  "a75b4dcd247e745e093780f5efca7e77-TCP-22-Internet" = {
    description                = ""
    priority                   = 500
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "Internet"
    destination_address_prefix = "20.74.174.70"
  }
  "a47e5a6706b2942ee904bd7fcbc8e4a4-TCP-22-Internet" = {
    description                = ""
    priority                   = 501
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "Internet"
    destination_address_prefix = "20.233.120.186"
  }
  }
  

  tags = {
        "Application Name": "WLP Dev",
        "Application Owner": "hussain.hashimi@dpworld.com",
        "ENV": "DEV",
        "RITM": "RITM00123"
}