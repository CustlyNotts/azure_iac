subscription_id     = <subscription_id>
resource_group_name = "rg-cargoesshipx-prod"
name                = "vm-shipxmetabase-database-prod"
image_os            = "linux"
os_simple           = "UbuntuServer"
size                = "Standard_D4ds_v5"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "Premium_LRS"
}

data_disks = [
  {
    name                 = "data-metabase"
    storage_account_type = "Premium_LRS"
    disk_size_gb         = 150
    create_option        = "Empty"
    attach_setting = {
      lun           = 1
      caching       = "ReadWrite"
      create_option = "Attach"
    }
  },
  {
    name                 = "temp-metabase"
    storage_account_type = "Premium_LRS"
    disk_size_gb         = 100
    create_option        = "Empty"
    attach_setting = {
      lun           = 2
      caching       = "ReadWrite"
      create_option = "Attach"
    }
  },
  {
    name                 = "log-metabase"
    storage_account_type = "Premium_LRS"
    disk_size_gb         = 100
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
      private_ip_address            = "10.2.193.8"
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