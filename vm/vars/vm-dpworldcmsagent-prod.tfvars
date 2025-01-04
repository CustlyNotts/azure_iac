subscription_id     = <subscription_id>
resource_group_name = "rg-dpworldcms-prod"
name                = "vm-dpworldcmsagent-prod"
image_os            = "linux"
os_simple           = "UbuntuServer"
size                = "Standard_D2s_V3"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "Standard_LRS"
}
virtual_network_name                = "vnet-dpworldcms-prod"
virtual_network_resource_group_name = "rg-dpworldcms-prod-infra"
subnet_name                         = "snet-dpworld-prod"
new_network_interface = {
  ip_configurations = [
    {
      private_ip_address_allocation = "Static"
      private_ip_address            = "10.48.192.11"
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
  "ENV"               = "Prod"
}

