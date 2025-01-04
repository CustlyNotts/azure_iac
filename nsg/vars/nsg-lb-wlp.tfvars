subscription_id                            = "56a6b4b1-7256-4834-9817-e27c75f1ae05"
network_security_group_resource_group_name = "rg-wlp-shared-services"
network_security_group_name                = "nsg-lb-wlp"


nsg_rules = {
  "AllowNginxToAksLb" = {
    description            = "Loadbalancer rules from Nginx machines (VM and Scalesets to AKS Subnet)"
    priority               = 120
    direction              = "Inbound"
    access                 = "Allow"
    protocol               = "*"
    source_port_range      = "*"
    destination_port_range = "*"
    source_address_prefixes = [
      "10.233.101.5/32",
      "10.233.117.5/32",
      "10.233.85.5/32"
    ]
    destination_address_prefixes = [
      "10.233.100.0/24",
      "10.233.116.0/24",
      "10.233.84.0/24"
    ]

  },

  "DefaultDeny" = {
    description                = ""
    priority                   = 4096
    direction                  = "Inbound"
    access                     = "Deny"
    protocol                   = "*"
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