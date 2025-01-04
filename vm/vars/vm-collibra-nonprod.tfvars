subscription_id     = <subscription_id>
resource_group_name = "RgsaphanaUAT"
name                = "vm-collibra-nonprod"
admin_username      = "adminuser"
image_os            = "linux"
os_simple           = "RHEL"
size                = "Standard_D16s_v3"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "Standard_LRS"
}
data_disks = [
  {
    name                 = "vm-collibra-k3s-datadisk"
    storage_account_type = "StandardSSD_LRS"
    disk_size_gb         = 60
    create_option        = "Empty"
    attach_setting = {
      lun           = 0
      caching       = "ReadWrite"
      create_option = "Attach"
    }
  },
  {
    name                 = "vm-collibra-edgestorge-datadisk"
    storage_account_type = "StandardSSD_LRS"
    disk_size_gb         = 500
    create_option        = "Empty"
    attach_setting = {
      lun           = 1
      caching       = "ReadWrite"
      create_option = "Attach"
    }
  }
]
virtual_network_name                = "VnetsaphanaUAT"
virtual_network_resource_group_name = "RgsaphanaUAT"
subnet_name                         = "Sapsubnet_UAT"
new_network_interface = {
  resource_group_name = "RgsaphanaUAT"
  ip_configurations = [
    {
      private_ip_address_allocation = "Static"
      private_ip_address            = "10.220.4.15"
    }
  ]
}
disable_password_authentication = false
identity = {
  type = "SystemAssigned"
}
tags = {
  "Application Name"  = "sap hana",
  "Application Owner" = "Tunwiir Badulla",
  "ENV"               = "UAT"
}
