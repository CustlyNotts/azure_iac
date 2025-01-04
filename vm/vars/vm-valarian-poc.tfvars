subscription_id     = <subscription_id>
resource_group_name = "rg-valarian-poc"
name                = "vm-valarian-poc"
image_os            = "linux"
os_simple           = "UbuntuServer"
size                = "Standard_F4s_v2"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "StandardSSD_LRS"
}

data_disks = [
  {
    name                 = "valarian-datadisk"
    storage_account_type = "StandardSSD_LRS"
    disk_size_gb         = 100
    create_option        = "Empty"
    attach_setting = {
      lun           = 0
      caching       = "ReadWrite"
      create_option = "Attach"
    }
  }
]

virtual_network_name                = "vnet-valarian-poc"
virtual_network_resource_group_name = "rg-valarian-poc"
subnet_name                         = "snet-valarian-poc"
new_network_interface = {
  resource_group_name = "rg-valarian-poc"
  ip_configurations = [
    {
      private_ip_address_allocation = "Static"
      private_ip_address            = "10.48.11.230"
    }
  ]
}
disable_password_authentication = false
identity = {
  type = "SystemAssigned"
}
tags = {
   "Application Name" : "Valarian",
  "Application Owner" : "Muhammad Tariq / Appas Muthalif",
  "ENV" : "POC",
  "RITM" : "RITM0107182"
}