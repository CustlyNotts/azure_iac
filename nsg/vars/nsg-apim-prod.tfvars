subscription_id     = <subscription_id>
network_security_group_resource_group_name = "rg-dpw-apim-prod"
network_security_group_name               = "nsg-apim-prod"


nsg_rules = {
    "AllowCidrBlockCustom3443Inbound" = {
        description                     = ""
        priority                        = 100
        direction                       = "Inbound"
        access                          = "Allow"
        protocol                        = "*"
        source_port_range               = "*"
        destination_port_range          = "3443"
        source_address_prefix           = "ApiManagement"
        destination_address_prefix      = "VirtualNetwork"
    },
    "AllowAnyCustom6390Inbound" = {
        description                     = ""
        priority                        = 110
        direction                       = "Inbound"
        access                          = "Allow"
        protocol                        = "*"
        source_port_range               = "*"
        destination_port_range          = "6390"
        source_address_prefix           = "AzureLoadBalancer"
        destination_address_prefix      = "VirtualNetwork"
    },    
    "AllowTagCustom443Outbound" = {
        description                     = ""
        priority                        = 120
        direction                       = "Outbound"
        access                          = "Allow"
        protocol                        = "*"
        source_port_range               = "*"
        destination_port_range          = "443"
        source_address_prefix           = "VirtualNetwork"
        destination_address_prefix      = "Storage"
    },
        "AllowTagCustom1433Outbound" = {
        description                     = ""
        priority                        = 130
        direction                       = "Outbound"
        access                          = "Allow"
        protocol                        = "*"
        source_port_range               = "*"
        destination_port_range          = "1443"
        source_address_prefix           = "VirtualNetwork"
        destination_address_prefix      = "Sql"
    },
     "AllowTagKeyvaultOutbound" = {
        description                     = ""
        priority                        = 140
        direction                       = "Outbound"
        access                          = "Allow"
        protocol                        = "*"
        source_port_range               = "*"
        destination_port_range          = "443"
        source_address_prefix           = "VirtualNetwork"
        destination_address_prefix      = "AzureKeyVault"
    },

         "AllowTagCustom1886-443Outbound" = {
        description                     = ""
        priority                        = 150
        direction                       = "Outbound"
        access                          = "Allow"
        protocol                        = "*"
        source_port_range               = "*"
        destination_port_ranges          = ["1886","443"]
        source_address_prefix           = "VirtualNetwork"
        destination_address_prefix      = "AzureMonitor"
    }

}

tags = {
  "Application Name" : "Azure APIM",
  "Application Owner" : "Shaloof Moopan",
  "ENV" : "PROD"
  "RITM" : "RITM12345"
}
