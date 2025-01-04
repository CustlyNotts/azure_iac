subscription_id     = <subscription_id>
resource_group_name = "rg-crs-amr-prod"
name                = "vm-crs-amr-02"
image_os            = "windows"
os_simple           = "WindowsServer"
size                = "Standard_E2s_v3"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "StandardSSD_LRS"
}
data_disks = [
  {
    name                 = "vm-crs-amr-02_DataDisk"
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
virtual_network_name                = "vnet-crs-amr-prod"
virtual_network_resource_group_name = "rg-crs-amr-prod"
subnet_name                         = "snet-crs-amr-prod"
new_network_interface = {
  ip_configurations = [
    {
      private_ip_address_allocation = "Static"
      private_ip_address            = "10.154.24.5"
    }
  ]
}
disable_password_authentication = false
identity = {
  type = "SystemAssigned"
}
tags = {
  "Application Owner" : "Moinudeen AliAzad",
  "ENV" : "PROD",
  "Application Name" : "CRS application Americas Region",
  "RITM" : "RITM0074474"
}