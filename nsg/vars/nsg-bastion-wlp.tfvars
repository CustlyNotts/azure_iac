subscription_id                            = "56a6b4b1-7256-4834-9817-e27c75f1ae05"
network_security_group_resource_group_name = "rg-wlp-shared-services"
network_security_group_name                = "nsg-bastion-wlp"


nsg_rules = {
  "AllowSshFromVPN" = {
    description                  = "Change source to the IP of Firewall VPN range"
    priority                     = 100
    direction                    = "Inbound"
    access                       = "Allow"
    protocol                     = "Tcp"
    source_port_range            = "*"
    destination_port_range       = "22"
    source_address_prefix        = "*"
    destination_address_prefixes = ["10.233.85.32/28", "10.233.101.32/28", "10.233.117.32/28", "10.237.1.0/24"]
  },
  "DenyAllTrafffic" = {
    description                = ""
    priority                   = 4096
    direction                  = "Inbound"
    access                     = "Deny"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  },
  "ICMP-port" = {
    description                = ""
    priority                   = 101
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Icmp"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}

tags = {
  "Application Name" : "WLP shared ",
  "Application Owner" : "Hussain ",
  "ENV" : "PROD"
}
