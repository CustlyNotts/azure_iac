subscription_id     = <subscription_id>
name                          = "stbtproddrlogs"
resource_group_name           = "rg-btprod-dr"
account_tier                  = "Premium"
account_kind                  = "FileStorage"
large_file_share_enabled      = true
account_replication_type      = "LRS"
public_network_access_enabled = true
tags = {
  "Application Name" : "CCS-Bharat Trade",
  "Application Owner" : "Daniel Stuart",
  "ENV" : "DR"
}