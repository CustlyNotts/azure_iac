subscription_id     = <subscription_id>
network_security_group_resource_group_name = "cargoes-staging"
network_security_group_name               = "cargoes-platform-staging-vnet-nsg"

nsg_rules = {

}

tags = {
        "app-name": "cargoes-platform",
        "app-type": "web",
        "Application Name": "Cargoes Platform",
        "Application Owner": "Ravi Pandey",
        "ENV": "TESTING"
    }