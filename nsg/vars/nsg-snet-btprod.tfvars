subscription_id     = <subscription_id>
network_security_group_name                = "nsg-snet-btprod"
network_security_group_resource_group_name = "rg-btnwhub"
nsg_rules = {
  "btuat-to-btprod_ssh" = {
    description                = "deployment from uat to prod"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "10.223.8.12/32"
    destination_address_prefix = "*"
  }
  "denyrule_snet-btuat" = {
    description                = "deny all traffic from snet-btuat"
    priority                   = 110
    direction                  = "Inbound"
    access                     = "Deny"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "10.223.8.0/22"
    destination_address_prefix = "*"
  }
  "denyrule_snet-btdemo" = {
    description                = "deny traffic from snet-btdemo"
    priority                   = 120
    direction                  = "Inbound"
    access                     = "Deny"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "10.223.0.0/22"
    destination_address_prefix = "*"
  }
  "Port_80" = {
    description                = "Port_80"
    priority                   = 130
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "8080"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
  "Port22_Allow" = {
    description                = "Port22_Allow"
    priority                   = 105
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}
