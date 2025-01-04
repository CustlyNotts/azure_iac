subscription_id     = <subscription_id>
resource_group_name = "rg-aiops-nonprod"
name                = "vm-aiops-nonprod"
image_os            = "linux"
os_simple           = "UbuntuServer"
size                = "Standard_NC24ads_A100_v4"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "StandardSSD_LRS"
}

data_disks = [
  {
    name                 = "aiops-nonprod-datadisk"
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

virtual_network_name                = "vnet-aiops-nonprod"
virtual_network_resource_group_name = "rg-aiops-nonprod"
subnet_name                         = "snet-aiops-nonprod"
new_network_interface = {
  resource_group_name = "rg-aiops-nonprod"
  ip_configurations = [
    {
      private_ip_address_allocation = "Static"
      private_ip_address            = "10.96.0.5"
    }
  ]
}
disable_password_authentication = false
identity = {
  type = "SystemAssigned"
}
tags = {
  "Application Name" : "AI",
  "Application Owner" : "som.dutta@dpworld.com",
  "ENV" : "DEV"
  "OsPatching" : "NonProd"
}