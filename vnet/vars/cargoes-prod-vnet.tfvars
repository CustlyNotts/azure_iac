subscription_id     = <subscription_id>
resource_group_name = "DPWHyderabadProd"
name                = "cargoes-prod-vnet"
address_space       = ["10.240.224.0/20"]
tags = {
  "Application Name" : "Flow/logistics",
  "Application Owner" : "Ravi/Mostafa",
  "ENV" : "PROD"
  "IaC By" : "Ayodele Orebe"
}
subnets = [
  {
    name             = "cargoes-prod-agw-subnet"
    address_prefixes = ["10.240.232.0/28"]
  },
  {
    name             = "cargoes-prod-subnet2"
    address_prefixes = ["10.240.233.0/24"]
  },
  {
    name                      = "cargoes-prod-subnet1"
    address_prefixes          = ["10.240.224.0/21"]
    network_security_group_id = "/subscriptions/368014ab-c35d-4615-a165-842d87aec6f5/resourceGroups/cargoes-prod/providers/Microsoft.Network/networkSecurityGroups/Metabase-Prod-nsg"
  }
]