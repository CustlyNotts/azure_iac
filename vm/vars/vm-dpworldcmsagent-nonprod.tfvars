subscription_id     = <subscription_id>
resource_group_name = "rg-dpworldcms-nonprod"
name                = "vm-dpworldcmsagent-nonprod"
image_os            = "linux"
os_simple           = "UbuntuServer"
size                = "Standard_B2s"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "Standard_LRS"
}
virtual_network_name                = "vnet-dpworldcms-nonprod"
virtual_network_resource_group_name = "rg-dpworldcms-nonprod-infra"
subnet_name                         = "snet-dpworld-nonprod"
new_network_interface = {
  ip_configurations = [
    {
      private_ip_address_allocation = "Static"
      private_ip_address            = "10.48.160.12"
    }
  ]
}
disable_password_authentication = false
identity = {
  type = "SystemAssigned"
}
tags = {
  "Application Name"  = "Dpworld CMS",
  "Application Owner" = "Bilal Adham",
  "ENV"               = "Non Prod"
}

