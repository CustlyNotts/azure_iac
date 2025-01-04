subscription_id                            = "56a6b4b1-7256-4834-9817-e27c75f1ae05"
network_security_group_resource_group_name = "rg-wlp-shared-prod"
network_security_group_name                = "aks-agentpool-45932971-nsg"


nsg_rules = {
  "a150fa4b47e374aef8da2707b548bbab-TCP-22-Internet" = {
    description                = ""
    priority                   = 500
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "Internet"
    destination_address_prefix = "20.203.65.185"
  }
}

tags = {
  "Application Name"         = "wlp Prod"
  "Application Owner"        = "hussain.hashimi@dpworld.com"
  "ENV"                      = "PROD"
  "RITM"                     = "RITM00123"
  "aks-managed-cluster-name" = "aks-wlp-prod"
  "aks-managed-cluster-rg"   = "rg-wlp-prod"
}