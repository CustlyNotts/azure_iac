subscription_id     = <subscription_id>
network_security_group_name                = "nsg-snet-btuat"
network_security_group_resource_group_name = "rg-btnwhub"
nsg_rules = {
  "denyrule_snet-btprod" = {
    description                = "deny all traffic from btprod snet"
    priority                   = 210
    direction                  = "Inbound"
    access                     = "Deny"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "10.223.12.0/22"
    destination_address_prefix = "*"
  }
  "denyrule_snet-btdemo" = {
    description                = "deny traffic from btdemo snet"
    priority                   = 200
    direction                  = "Inbound"
    access                     = "Deny"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "10.223.0.0/22"
    destination_address_prefix = "*"
  }
  "allow_cns-snet-wvd-01" = {
    description                = "allow traffic from cns wvd vnet"
    priority                   = 150
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "172.23.0.0/28"
    destination_address_prefix = "*"
  }
  "AllowSFTP_FROM_INTEST" = {
    description                = "AllowSFTP_FROM_INTEST"
    priority                   = 170
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "10.223.0.0/22"
    destination_address_prefix = "*"
  }
}
