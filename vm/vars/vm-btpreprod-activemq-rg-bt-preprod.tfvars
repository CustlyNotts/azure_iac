subscription_id     = <subscription_id>
resource_group_name = "RG-BT-PREPROD"
name                = "vm-btpreprod-activemq"
os_simple           = "CentOS"
size                = "Standard_D2s_v3"
image_os            = "linux"
vmimport            = "enabled"
admin_username      = "activemquser"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "PremiumSSD_LRS" #this is used azurerm_linux_virtual_machine
  create               = "FromImage"
  name                 = "vm-btpreprod-activemq_disk1_711efb7e5b8341ca8c33b20aa1d5d4c8"
  disk_size_gb         = "30"
  type                 = "StandardSSD_LRS"
}

boot_diagnostics_storage_account_uri = ""
virtual_network_name                 = "vnet-btnwhub"
virtual_network_resource_group_name  = "rg-btnwhub"
subnet_name                          = "snet-bt-preprod"
new_network_interface = {
  name                           = "vm-btpreprod-acti960"
  resource_group_name            = "rg-bt-preprod"
  accelerated_networking_enabled = true
  ip_configurations = [
    {
      name                          = "ipconfig1"
      private_ip_address_allocation = "Dynamic"
      private_ip_address            = "10.223.80.27"
    }
  ]
}

os_profile = {
  computer_name  = "vm-btpreprod-activemq"
  admin_username = "activemquser"
}

os_profile_linux_config = {
  disable_password_authentication = true
}
identity = {
  type = "SystemAssigned"
}

admin_ssh_keys = [
  {
    public_key = "---- BEGIN SSH2 PUBLIC KEY ----\nAAAAB3NzaC1yc2EAAAADAQABAAABAQCFLC7WefyTG9dfhFNDvvnUS9I+nHjpZRI+\ng6KdXBPp9vGVkSrR+yboQBOrtXKw3K+cHdImatcPjfOR8cR8IQftVWKT9RdbNlC9\n3/mjSDW/93H0LyjkqtoC3nzMknEjn7st6EWXEyIYswKDnxVLoFttD/adELZF/7AM\n1qbw8Sk/s2NRqWSrmVqlsDitmc1KlOXgGiHigw+a4zmyI/Ec+0aWyENdvXo4jExS\n8LvyJNkh5po9tgGUokGI397IZxyajmr3CzJHu+CYkd5R30/yOKRNe/F1xbfMxJJ6\nWVRZyooVanBa8jd8s2zZ7lVWoOZVdz9rJwx3zSTJI6PFC4iGspT5\n---- END SSH2 PUBLIC KEY ----"
  }
]


tags = {
  "Application Name"  = "Bharat Trade",
  "Application Owner" = "Daniel Stuart"
  "ENV"               = "DEV"
  "scheduler"         = "off=(M-F,17);on=(M-F,8);tz=Asia/Dubai"
}
