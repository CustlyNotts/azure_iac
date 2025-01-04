subscription_id     = <subscription_id>
resource_group_name = "rg-p81-connector-prod"
name                = "vnet-p81-connector-prod"
use_ipam            = true
vnet_mask           = 22
subnets = [
  { name = "snet-p81-connector-prod", snet_mask = 24 },
]
create_default_peerings = true # Creation of peerings to Harmony Connect and Sechub in respective Azure regions. The default is true.
tags = {
  "Application Name" : "P81 Connector",
  "Application Owner" : "Kiran Sivaraman/Nelson Chieki",
  "ENV" : "PROD",
  "Created By" : "Ayodele Orebe"
}