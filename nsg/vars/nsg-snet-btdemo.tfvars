subscription_id     = <subscription_id>
network_security_group_name                = "nsg-snet-btdemo"
network_security_group_resource_group_name = "rg-btnwhub"
nsg_rules = {
  "allowrule-snet-internallb" = {
    description                = "allow traffic fro snet-internallb"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "10.223.16.0/27"
    destination_address_prefix = "*"
  }
  "denyrule_snet-btprod" = {
    description                = "deny traiic from btprod snet"
    priority                   = 110
    direction                  = "Inbound"
    access                     = "Deny"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "10.223.12.0/22"
    destination_address_prefix = "*"
  }
  "denyrule_snet-btuat" = {
    description                = "deny traffic from btuat snet"
    priority                   = 120
    direction                  = "Inbound"
    access                     = "Deny"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "10.223.8.0/22"
    destination_address_prefix = "*"
  }
  "SSH_BTUAT_TO_BTDEMO" = {
    description                = "SSH_BTUAT_TO_BTDEMO"
    priority                   = 130
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "10.223.8.12/32"
    destination_address_prefix = "*"
  }
  "intermediate_rule_61616_btdemo_to_btuat" = {
    description                = "intermediate_rule_61616_btdemo_to_btuat"
    priority                   = 115
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "10.223.8.5/32"
    destination_address_prefix = "*"
  }
  "Port_8161" = {
    description                = "Port_8161"
    priority                   = 140
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "8161"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}
