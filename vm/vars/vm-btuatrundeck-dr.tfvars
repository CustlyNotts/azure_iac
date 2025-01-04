subscription_id     = <subscription_id>
resource_group_name = "rg-btuat-dr"
name                = "vm-btuatrundeck-dr"
image_os            = "linux"
os_simple           = "UbuntuServer"
size                = "Standard_D2s_v3"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "Standard_LRS"
}
virtual_network_name                = "vnet-bt-dr"
virtual_network_resource_group_name = "rg-btinfra-dr"
subnet_name                         = "snet-uatcommon-dr"
new_network_interface = {
  name                = "vm-btuatrundeck-dr-nic"
  resource_group_name = "rg-btuat-dr"
  ip_configurations = [
    {
      private_ip_address_allocation = "Static"
      private_ip_address            = "172.17.8.10"
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

