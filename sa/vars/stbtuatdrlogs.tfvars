subscription_id     = <subscription_id>
name                          = "stbtuatdrlogs"
resource_group_name           = "rg-btuat-dr"
account_tier                  = "Premium"
account_kind                  = "FileStorage"
large_file_share_enabled      = true
account_replication_type      = "LRS"
public_network_access_enabled = true
tags = {
  "Application Name" : "CCS",
  "Application Owner" : "Daniel Stuart/Linu Joseph/Pradeesh Raju",
  "ENV" : "UATDR"
}