subscription_id     = <subscription_id>
network_security_group_resource_group_name = "cargoes-prod"
network_security_group_name               = "cargoes-platform-prod-utility-nsg"

nsg_rules = {

}

tags = {
        "app-name": "cargoes-platform-utility-vm",
        "Application Name": "Flow/datachain/logistics",
        "Application Owner": "Ravi/Mostafa/Jaya",
        "ENV": "PROD"
    }