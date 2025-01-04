subscription_id     = <subscription_id>
resource_group_name = "rg-dpwho-sec-backbox"
name                = "vm-dpwho-sec-backbox"
image_os            = "linux"
os_simple           = "UbuntuServer"
size                = "Standard_DS3_v2"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "StandardSSD_LRS"
}
virtual_network_name                = "vnet-dpwho-sec-backbox"
virtual_network_resource_group_name = "rg-dpwho-sec-backbox"
subnet_name                         = "snet-dpwho-sec-backbox"
new_network_interface = {
  ip_configurations = [
    {
      private_ip_address_allocation = "Dynamic"
      #private_ip_address            = "10.154.24.31"
    }
  ]
}

data_disks = [
  {
    name                 = "vm-dpwho-sec-backbox_DataDisk"
    storage_account_type = "StandardSSD_LRS"
    disk_size_gb         = 256
    create_option        = "Empty"
    attach_setting = {
      lun           = 0
      caching       = "ReadWrite"
      create_option = "Attach"
    }
  }
]
disable_password_authentication = false
identity = {
  type = "SystemAssigned"
}


