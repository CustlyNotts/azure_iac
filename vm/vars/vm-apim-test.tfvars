subscription_id     = <subscription_id>
resource_group_name = "rg-dpw-apim-nonprod"
name                = "vm-apim-test.tfvars"
image_os            = "linux"
os_simple           = "UbuntuServer"
size                = "Standard_B2s"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "Standard_LRS"
}
virtual_network_name                = "vnet-apim-nonprod"
virtual_network_resource_group_name = "Rg-Cargoes-APIM-NonProd"
subnet_name                         = "snet-shared"
    new_network_interface = {
    name                = "vm-apim-test"
    resource_group_name = "rg-dpw-apim-nonprod"
    ip_configurations = [
        {
        name                          = "ipconfig1"
        private_ip_address_allocation = "Dynamic"
        private_ip_address            = ""
        }
    ]
}
disable_password_authentication = false
identity = {
  type = "SystemAssigned"
}
##
#tags = {
#  "Application Name"  = "Cargoes Flow,
# "Application Owner" = "Mostafa / Ravi K",
#"ENV"               = "PROD"
#"scheduler"         = "off=(M-U,17);on=(M-U,8);tz=Asia/Dubai"
#}

