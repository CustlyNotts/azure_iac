subscription_id     = <subscription_id>
resource_group_name = "rg-ccsautomation-nonprod"
name                = "vm-ccsautomation"
computer_name       = "ccsautomation"
image_os            = "windows"
os_simple           = "Windows10"
size                = "Standard_B2s"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "Standard_LRS"
}
virtual_network_name                = "vnet-ccsdev-nonprod"
virtual_network_resource_group_name = "rg-ccsautomation-nonprod"
subnet_name                         = "snet-ccs-automation"
new_network_interface = {
  ip_configurations = [
    {
      private_ip_address_allocation = "Static"
      private_ip_address            = "10.0.8.4"
    }
  ]
}
identity = {
  type = "SystemAssigned"
}
tags = {
  "Application Name"  = "Mawani CNS",
  "Application Owner" = "Daniel Stuart / pradeesh raju",
  "ENV"               = "UAT"
  "scheduler"         = "off=(M-U,17);on=(M-U,8);tz=Asia/Dubai"
}

