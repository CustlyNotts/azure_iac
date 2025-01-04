subscription_id     = <subscription_id>
resource_group_name = "rg-btprod-dr"
name                = "vm-bt-prod-sftp-dr"
image_os            = "linux"
os_simple           = "CentOS"
size                = "standard_B2ms"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "StandardSSD_LRS"
}
virtual_network_name                = "vnet-bt-dr"
virtual_network_resource_group_name = "rg-btinfra-dr"
subnet_name                         = "snet-common-dr"
new_network_interface = {
  name                = "vm-btprodsftp-dr-nic"
  resource_group_name = "rg-btprod-dr"
  ip_configurations = [
    {
      private_ip_address_allocation = "Static"
      private_ip_address            = "172.17.11.17"
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

