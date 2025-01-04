subscription_id     = <subscription_id>
resource_group_name = "rg-tripwire-dev"
name                = "vm-tripwire-dev"
image_os            = "windows"
os_simple           = "WindowsServer"
size                = "Standard_D2s_v3"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "StandardSSD_LRS"
}
data_disks = [
  {
    name                 = "vm-tripwire-dev_DataDisk"
    storage_account_type = "StandardSSD_LRS"
    disk_size_gb         = 128
    create_option        = "Empty"
    attach_setting = {
      lun           = 0
      caching       = "ReadWrite"
      create_option = "Attach"
    }
  }
]
virtual_network_name                = "vnetsechub"
virtual_network_resource_group_name = "rgnwsechub"
subnet_name                         = "snet-CIS-CAT-poc"
new_network_interface = {
  ip_configurations = [
    {
      private_ip_address_allocation = "Dynamic"
      #private_ip_address            = "10.154.24.29"
    }
  ]
}
identity = {
  type = "SystemAssigned"
}

tags = {
    "Application Owner" : "Tayo Oyeyemi",
    "ENV" : "Dev",
    "Application Name" : "Tripwire",
    "RITM" : "RITM0098480"
}