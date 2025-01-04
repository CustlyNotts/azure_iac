subscription_id     = <subscription_id>
resource_group_name = "rg-bigid-prod"
name                = "vm-bigid-prod-02"
image_os            = "linux"
os_simple           = "UbuntuServer"
size                = "Standard_D4s_v5"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "StandardSSD_LRS"
}

data_disks = [
  {
    name                 = "vm-bigid-dgov-02-datadisk"
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

virtual_network_name                = "vnet-bigid-prod"
virtual_network_resource_group_name = "rg-bigid-prod"
subnet_name                         = "snet-bigid-prod"
new_network_interface = {
  ip_configurations = [
    {
      private_ip_address_allocation = "Static"
      private_ip_address            = "10.48.0.133"
    }
  ]
}
disable_password_authentication = false
identity = {
  type = "SystemAssigned"
}
tags = {
  "Application Owner" : "Sadaqat Ulla Patel",
  "ENV" : "PROD",
  "Application Name" : "Dataprivacy Tool Big ID",
  "RITM" : "RITM0069628"
  "OsPatching" : "ProdWithReboot"
}