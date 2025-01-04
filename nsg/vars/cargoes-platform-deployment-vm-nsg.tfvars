subscription_id     = <subscription_id>
network_security_group_resource_group_name = "cargoes-prod"
network_security_group_name               = "cargoes-platform-deployment-vm-nsg"

nsg_rules = {

}

tags = {
        "Application Name": "Flow/datachain/logistics",
        "Application Owner": "Ravi/Mostafa/Jaya",
        "ENV": "PROD"
    }