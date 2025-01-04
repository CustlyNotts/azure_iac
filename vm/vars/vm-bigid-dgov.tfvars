subscription_id     = <subscription_id>
resource_group_name = "rg-sec-dataprivacy-poc"
name                = "vm-bigid-dgov"
image_os            = "linux"
os_simple           = "UbuntuServer"
size                = "Standard_D4s_v5"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "StandardSSD_LRS"
}

data_disks = [
  {
    name                 = "vm-bigid-dgov-datadisk"
    storage_account_type = "StandardSSD_LRS"
    disk_size_gb         = 127
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
subnet_name                         = "snet-dataprivacy-poc"
new_network_interface = {
  ip_configurations = [
    {
      private_ip_address_allocation = "Static"
      private_ip_address            = "10.254.10.86"
    }
  ]
}
disable_password_authentication = false
identity = {
  type = "SystemAssigned"
}
tags = {
  "Application Owner" : "Sadaqat Ulla Patel",
  "ENV" : "POC",
  "Application Name" : "Dataprivacy Tool Big ID",
  "RITM" : "RITM0069628"
}