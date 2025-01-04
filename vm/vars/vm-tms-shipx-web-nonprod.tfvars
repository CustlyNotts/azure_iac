subscription_id     = <subscription_id>
resource_group_name = "rg-shipx-tms-nonprod"
name                = "vm-tms-shipx-web-nonprod"
image_os            = "linux"
os_simple           = "UbuntuServer"
size                = "Standard_D4s_v3"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "Standard_LRS"
}
data_disks = [
  {
    name                 = "app"
    storage_account_type = "Standard_LRS"
    disk_size_gb         = 150
    create_option        = "Empty"
    attach_setting = {
      lun           = 0
      caching       = "ReadWrite"
      create_option = "Attach"
    }
  }
]

virtual_network_name                = "vnet-tms-nonprod"
virtual_network_resource_group_name = "rg-tms-nonprod-infra"
subnet_name                         = "snet-tms-nonprod"
new_network_interface = {

  resource_group_name = "rg-tms-nonprod-infra"
  ip_configurations = [
    {
      private_ip_address_allocation = "Static"
      private_ip_address            = "10.7.34.8"
    }
  ]
}
disable_password_authentication = false
identity = {
  type = "SystemAssigned"
}
tags = {
  "Application Name"  = "Shipx for TMS",
  "Application Owner" = "Shiv Suthar",
  "ENV"               = "NonProd"
}