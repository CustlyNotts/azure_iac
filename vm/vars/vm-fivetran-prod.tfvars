subscription_id     = <subscription_id>
resource_group_name = "rg-hoinfra-prod"
name                = "vm-infrajobs2-prod"
image_os            = "windows"
os_simple           = "WindowsServer"
size                = "Standard_D4s_v3"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "StandardSSD_LRS"
}
data_disks = [
  {
    name                 = "vm-fivetran-prod_DataDisk"
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
virtual_network_name                = "vnetdpwglb"
virtual_network_resource_group_name = "rgvnet"
subnet_name                         = "Production"
new_network_interface = {
  ip_configurations = [
    {
      private_ip_address_allocation = "Dynamic"
      #private_ip_address            = "10.154.24.4"
    }
  ]
}
disable_password_authentication = false
identity = {
  type = "SystemAssigned"
}
tags = {
  "Application Owner" : "Shaloof/Nowphal",
  "ENV" : "PROD",
  "Application Name" : "Infra Job VM",
  "RITM" : "RITM0077269"
}