subscription_id     = <subscription_id>
name                              = "strgecomuaetest"
resource_group_name               = "rg-ecommercedragonmart-dev"
account_tier                      = "Standard"
account_kind                      = "StorageV2"
account_replication_type          = "LRS"
soft_delete_enabled               = true
change_feed_enabled               = true
versioning_enabled                = true
all_network_access_enabled        = true
public_network_access_enabled     = true
infrastructure_encryption_enabled = false
restore_policy_days               = 6
bypass                            = ["None"]
subnet_ids = [
  "/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rgvnet/providers/Microsoft.Network/virtualNetworks/vnetdpwglb/subnets/Production",
  "/subscriptions/1691759c-bec8-41b8-a5eb-03c57476ffdb/resourceGroups/rgvnet/providers/Microsoft.Network/virtualNetworks/vnetdpwglb/subnets/UAT",

]

tags = {
  "Application Name" : "DragonMart",
  "Application Owner" : "Arup Sarkar",
  "ENV" : "DEV"
}