subscription_id     = <subscription_id>
resource_group_name = "rg-cargoesshipx-prod"
name                = "vm-shipxdbanalytics-prod"
image_os            = "linux"
os_simple           = "UbuntuServer"
size                = "Standard_F8s_v2"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "Premium_LRS"
}

data_disks = [
  {
    name                 = "data-analytics"
    storage_account_type = "Premium_LRS"
    disk_size_gb         = 500
    create_option        = "Empty"
    attach_setting = {
      lun           = 1
      caching       = "ReadWrite"
      create_option = "Attach"
    }
  },
  {
    name                 = "temp-analytics"
    storage_account_type = "Premium_LRS"
    disk_size_gb         = 200
    create_option        = "Empty"
    attach_setting = {
      lun           = 2
      caching       = "ReadWrite"
      create_option = "Attach"
    }
  },
  {
    name                 = "log-analytics"
    storage_account_type = "Premium_LRS"
    disk_size_gb         = 200
    create_option        = "Empty"
    attach_setting = {
      lun           = 3
      caching       = "ReadWrite"
      create_option = "Attach"
    }
  }
]

virtual_network_name                = "vnet-cargoesshipx-prod"
virtual_network_resource_group_name = "rg-cargoesshipxprod-infra"
subnet_name                         = "snet-shipxdatabase-prod"
new_network_interface = {
  ip_configurations = [
    {
      private_ip_address_allocation = "Static"
      private_ip_address            = "10.2.193.7"
    }
  ]
}
disable_password_authentication = false
identity = {
  type = "SystemAssigned"
}
tags = {
  "Application Name"  = "Shipx",
  "Application Owner" = "Shiv Suthar",
  "ENV"               = "Prod"
}