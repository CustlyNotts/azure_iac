subscription_id     = <subscription_id>
resource_group_name = "rg-infrateam"
name                = "vm-test-linux"
image_os            = "linux"
os_simple           = "UbuntuServer"
size                = "Standard_B2s"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "Standard_LRS"
}
virtual_network_name                = "vnet-infrateam"
virtual_network_resource_group_name = "rg-infrateam"
subnet_name                         = "snet-aks-infra"
new_network_interface = {
  ip_configurations = [
    {
      private_ip_address_allocation = "Static"
      private_ip_address            = "10.139.2.223"
    }
  ]
}
disable_password_authentication = false
identity = {
  type = "SystemAssigned"
}
# tags = {
#   "Application Name"  = "Mawani CNS",
#   "Application Owner" = "Daniel Stuart / pradeesh raju",
#   "ENV"               = "UAT"
#   "scheduler"         = "off=(M-U,17);on=(M-U,8);tz=Asia/Dubai"
# }

