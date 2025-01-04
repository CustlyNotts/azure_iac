subscription_id                            = "56a6b4b1-7256-4834-9817-e27c75f1ae05"
network_security_group_resource_group_name = "rg-wlp-shared-services"
network_security_group_name                = "nsg-native-wlp"


nsg_rules = {
  "icmp-port" = {
    description                = ""
    priority                   = 106
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Icmp"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  },
  "AllowAllProdNative" = {
    description                                = ""
    priority                                   = 104
    direction                                  = "Inbound"
    access                                     = "Allow"
    protocol                                   = "*"
    source_port_range                          = "*"
    destination_port_range                     = "*"
    source_address_prefix                      = ""
    destination_address_prefix                 = ""
    destination_application_security_group_ids = ["/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-prod/providers/Microsoft.Network/applicationSecurityGroups/asg-wlp-native-prod"]
    source_application_security_group_ids      = ["/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-prod/providers/Microsoft.Network/applicationSecurityGroups/asg-wlp-native-prod"]
  },
  "AllowAllDevNative" = {
    description                                = ""
    priority                                   = 102
    direction                                  = "Inbound"
    access                                     = "Allow"
    protocol                                   = "*"
    source_port_range                          = "*"
    destination_port_range                     = "*"
    source_address_prefix                      = ""
    destination_address_prefix                 = ""
    destination_application_security_group_ids = ["/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-dev/providers/Microsoft.Network/applicationSecurityGroups/asg-wlp-native-dev"]
    source_application_security_group_ids      = ["/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-dev/providers/Microsoft.Network/applicationSecurityGroups/asg-wlp-native-dev"]
  },
  "AllowSshFromBastion" = {
    description                  = ""
    priority                     = 100
    direction                    = "Inbound"
    access                       = "Allow"
    protocol                     = "Tcp"
    source_port_range            = "*"
    destination_port_range       = "22"
    source_address_prefixes      = ["10.233.85.32/28", "10.233.101.32/28", "10.233.117.32/28", "10.237.1.0/24"]
    destination_address_prefixes = ["10.233.85.0/27", "10.233.101.0/27", "10.233.117.0/27", "10.237.1.0/24"]
  },
  "AllowAllStageNative" = {
    description                                = ""
    priority                                   = 103
    direction                                  = "Inbound"
    access                                     = "Allow"
    protocol                                   = "*"
    source_port_range                          = "*"
    destination_port_range                     = "*"
    source_address_prefix                      = ""
    destination_address_prefix                 = ""
    destination_application_security_group_ids = ["/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-stage/providers/Microsoft.Network/applicationSecurityGroups/asg-wlp-native-stage"]
    source_application_security_group_ids      = ["/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-wlp-stage/providers/Microsoft.Network/applicationSecurityGroups/asg-wlp-native-stage"]
  },
  "AllowAppGwToNginx" = {
    description                  = ""
    priority                     = 105
    direction                    = "Inbound"
    access                       = "Allow"
    protocol                     = "Tcp"
    source_port_range            = "*"
    destination_port_range       = "80"
    source_address_prefix        = "*"
    destination_address_prefixes = ["10.233.85.5/32", "10.233.101.5/32", "10.233.117.5/32"]
  },
  "AllowAllTrafficFromAksToNative" = {
    description                  = ""
    priority                     = 101
    direction                    = "Inbound"
    access                       = "Allow"
    protocol                     = "*"
    source_port_range            = "*"
    destination_port_range       = "*"
    source_address_prefixes      = ["10.233.80.0/22", "10.233.96.0/22", "10.233.112.0/22"]
    destination_address_prefixes = ["10.233.85.0/27", "10.233.101.0/27", "10.233.117.0/27"]
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
  "Application Name"  = "WLP shared "
  "Application Owner" = "Hussain "
  "ENV"               = "PROD"
}
