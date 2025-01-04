subscription_id                            = "56a6b4b1-7256-4834-9817-e27c75f1ae05"
network_security_group_resource_group_name = "rg-accounts-dr"
network_security_group_name                = "VM-build-prod-dr-nsg"


nsg_rules = {

}

tags = {
  "Application Name" : "Accounts",
  "Application Owner" : "Daniel Stuart/Linu Joseph/Pradeesh Raju",
  "ENV" : "dr"
}
