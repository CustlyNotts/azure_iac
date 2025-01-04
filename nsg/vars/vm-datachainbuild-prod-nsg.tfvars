subscription_id     = <subscription_id>
network_security_group_resource_group_name = "rg-blockchain-prod"
network_security_group_name               = "vm-datachainbuild-prod-nsg"

nsg_rules = {

}

tags           = {
            "Application Name"         = "Datachain",
            "Application Owner"        = "Jay Li / Jayakrishna Alwar",
            "ENV"                      = "PROD"
}