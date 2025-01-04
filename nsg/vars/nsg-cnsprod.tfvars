subscription_id     = <subscription_id>
network_security_group_name                = "nsg-cnsprod"
network_security_group_resource_group_name = "rg-cnsprod"
nsg_rules = {
  "allow_cnsprod_ilbsubnet" = {
    description                = "allow traffic from cnsprod ILB subnet"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "172.22.137.0/28"
    destination_address_prefix = "*"
  }
  "allow_N4_TOS" = {
    description                = "allow traffic from LG N4 TOS"
    priority                   = 130
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "*"
    source_port_range          = "10080"
    destination_port_range     = "*"
    source_address_prefix      = "172.31.10.45/32"
    destination_address_prefix = "*"
  }
  "allow_p2svpn" = {
    description                = "allow connection from checkpoint P2S vpn"
    priority                   = 110
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "172.16.10.0/24"
    destination_address_prefix = "*"
  }
  "allow_IBM_MQ" = {
    description                = "allow traffic from IBM mq from cns onprem"
    priority                   = 140
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "*"
    source_port_range          = "1509"
    destination_port_range     = "*"
    source_address_prefixes    = ["10.150.64.11/32", "10.150.64.12/32"]
    destination_address_prefix = "*"
  }
  "deny_snet-cnstest" = {
    description                = "deny connection from snet-cnstest"
    priority                   = 170
    direction                  = "Inbound"
    access                     = "Deny"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "172.22.0.0/19"
    destination_address_prefix = "*"
  }
  "allow_cnsprod_ilbsubnet" = {
    description                = "allow traffic from cnsprod ILB subnet"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "172.22.137.0/28"
    destination_address_prefix = "*"
  }
  "allow_snet-cnsprod" = {
    description                = "aloow connection inside snet-cnsprod"
    priority                   = 185
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "172.22.96.0/19"
    destination_address_prefix = "172.22.96.0/19"
  }
  "deny_snet-cnsuat" = {
    description                = "deny connection from snet-cnsuat"
    priority                   = 160
    direction                  = "Inbound"
    access                     = "Deny"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "172.22.32.0/19"
    destination_address_prefix = "*"
  }
  "deny_snet-cnspt" = {
    description                = "deny connection from snet-cnspt"
    priority                   = 180
    direction                  = "Inbound"
    access                     = "Deny"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "172.22.64.0/19"
    destination_address_prefix = "*"
  }
  "deny_snet-cnspreprod" = {
    description                = "deny connection from snet-cnspreprod"
    priority                   = 150
    direction                  = "Inbound"
    access                     = "Deny"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "172.22.132.0/22"
    destination_address_prefix = "*"
  }
}