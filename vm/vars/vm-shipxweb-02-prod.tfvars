subscription_id     = <subscription_id>
resource_group_name = "rg-cargoesshipx-prod"
name                = "vm-shipxweb-02-prod"
image_os            = "linux"
os_simple           = "UbuntuServer18"
size                = "Standard_F16s_v2"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "Premium_LRS"
}

data_disks = [
  {
    name                 = "web-02-app"
    storage_account_type = "Premium_LRS"
    disk_size_gb         = 250
    create_option        = "Empty"
    attach_setting = {
      lun           = 0
      caching       = "ReadWrite"
      create_option = "Attach"
    }
  }
]

virtual_network_name                = "vnet-cargoesshipx-prod"
virtual_network_resource_group_name = "rg-cargoesshipxprod-infra"
subnet_name                         = "snet-shipxcompute-prod"
new_network_interface = {
  resource_group_name = "rg-cargoesshipxprod-infra"
  ip_configurations = [
    {
      private_ip_address_allocation = "Static"
      private_ip_address            = "10.2.192.8"
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