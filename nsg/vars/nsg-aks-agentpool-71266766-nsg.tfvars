subscription_id                            = "56a6b4b1-7256-4834-9817-e27c75f1ae05"
network_security_group_resource_group_name = "rg-wlp-shared-stage"
network_security_group_name                = "aks-agentpool-71266766-nsg"


nsg_rules = {
  "a88833fb4f2ca4ef2958ee9071d7b14f-TCP-22-Internet" = {
    description                = ""
    priority                   = 500
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "Internet"
    destination_address_prefix = "20.74.191.244"
  },
  "a21abd3752be342a0a2ef97e8c2b2f5b-TCP-80-Internet" = {
    description                = ""
    priority                   = 501
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "80"
    source_address_prefix      = "Internet"
    destination_address_prefix = "20.203.84.6"
  },
  "a21abd3752be342a0a2ef97e8c2b2f5b-TCP-443-Internet" = {
    description                = ""
    priority                   = 502
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "443"
    source_address_prefix      = "Internet"
    destination_address_prefix = "20.203.84.6"
  }
}


tags = {
  "Application Name" : "WLP stage",
  "Application Owner" : "hussain.hashimi@dpworld.com",
  "ENV" : "STAGING",
  "RITM" : "RITM00123"
}