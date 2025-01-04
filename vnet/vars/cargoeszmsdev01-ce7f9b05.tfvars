subscription_id     = <subscription_id>
resource_group_name = "cargoeszmsdev01"
name                = "cargoeszmsdev01-ce7f9b05"
address_space       = ["10.1.0.0/16"]
tags = {
  "displayName" : "VirtualNetwork",
  "Application Name" : "cargoes zms",
  "Application Owner" : "Shaloof/ Nowphal",
  "ENV" : "PROD"
  "IaC By" : "Ayodele Orebe"
}
subnets = [
  {
    name                      = "AX-APPNET-1f7bf3df"
    address_prefixes          = ["10.1.1.0/24"]
    network_security_group_id = "/subscriptions/f82bd124-b526-43d2-89ee-1768f5e7f3fe/resourceGroups/cargoeszmsdev01/providers/Microsoft.Network/networkSecurityGroups/cargoeszmsdev01-networksecuritygroup"
  },
  {
    name             = "appGatewaySubnet"
    address_prefixes = ["10.1.2.0/24"]
  }
]