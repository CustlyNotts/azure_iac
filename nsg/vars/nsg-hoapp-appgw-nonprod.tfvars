subscription_id     = <subscription_id>
network_security_group_resource_group_name = "rg-hoapp-appgw-nonprod"
network_security_group_name               = "nsg-hoapp-appgw-nonprod"

nsg_rules = {

}

tags           = {
            "Application Name"         = "Ho Application",
            "Application Owner"        = "Mohamed Nowphal",
            "ENV"                      = "Non Prod"
}