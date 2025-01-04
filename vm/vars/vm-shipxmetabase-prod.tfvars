subscription_id     = <subscription_id>
resource_group_name = "rg-cargoesshipx-prod"
name                = "vm-shipxmetabase-prod"
image_os            = "linux"
os_simple           = "UbuntuServer"
size                = "Standard_F8s_v2"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "Premium_LRS"
}

data_disks = [
  {
    name                 = "metabaseweb-log"
    storage_account_type = "Premium_LRS"
    disk_size_gb         = 200
    create_option        = "Empty"
    attach_setting = {
      lun           = 0
      caching       = "ReadWrite"
      create_option = "Attach"
    }
  },
  {
    name                 = "metabaseweb-app"
    storage_account_type = "Premium_LRS"
    disk_size_gb         = 250
    create_option        = "Empty"
    attach_setting = {
      lun           = 1
      caching       = "ReadWrite"
      create_option = "Attach"
    }
  }
]

virtual_network_name                = "vnet-cargoesshipx-prod"
virtual_network_resource_group_name = "rg-cargoesshipxprod-infra"
subnet_name                         = "snet-shipxcompute-prod"
new_network_interface = {
  ip_configurations = [
    {
      private_ip_address_allocation = "Static"
      private_ip_address            = "10.2.192.6"
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