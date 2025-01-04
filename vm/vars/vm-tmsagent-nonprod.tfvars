subscription_id     = <subscription_id>
resource_group_name = "rg-tms-nonprod"
name                = "vm-tmsagent-nonprod"
image_os            = "linux"
os_simple           = "UbuntuServer"
size                = "Standard_B2s"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "Standard_LRS"
}
virtual_network_name                = "vnet-tms-nonprod"
virtual_network_resource_group_name = "rg-tms-nonprod-infra"
subnet_name                         = "snet-tms-nonprod"
new_network_interface = {
  ip_configurations = [
    {
      private_ip_address_allocation = "Static"
      private_ip_address            = "10.7.34.7"
    }
  ]
}
disable_password_authentication = false
identity = {
  type = "SystemAssigned"
}
tags = {
  "Application Name"  = "Shipx",
  "Application Owner" = "Shiv Suthar",
  "ENV"               = "NonProd"
}

