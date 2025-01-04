subscription_id     = <subscription_id>
resource_group_name = "rg-dga-customsapp"
name                = "vm-dga-customsapp-devops"
#os_simple           = "CentOS 7.9.2009"
size     = "Standard_D4s_v3"
image_os = "linux"
vmimport = "enabled"
#zone                = "[]"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "PremiumSSD_LRS" #this is used azurerm_linux_virtual_machine
  create               = "FromImage"
  name                 = "vm-dga-customsapp-devops_OsDisk_1_4f51f21b18fe462e97479b71eedff66d"
  disk_size_gb         = "128"
  type                 = "Premium_LRS"
  storage_account_type = "Premium_LRS"
  os_type              = "Linux"
  managed_disk_id      = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/RG-DGA-CUSTOMSAPP/providers/Microsoft.Compute/disks/vm-dga-customsapp-devops_OsDisk_1_4f51f21b18fe462e97479b71eedff66d"
}

/* data_disk = {
  caching               = "ReadWrite"
  storage_account_type  = "PremiumSSD_LRS" #this is used azurerm_linux_virtual_machine
  create                = "Attach"
  name                  = "vm-dga-customsapp-devops_DataDisk_0"
  disk_size_gb          = "256"
  type                  = "PremiumSSD_LRS"
  storage_account_type  = "Premium_LRS"
  managed_disk_type     = "Premium_LRS"
  os_type               = "Linux"
  managed_disk_id       = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-dga-customsapp/providers/Microsoft.Compute/disks/vm-dga-customsapp-devops_DataDisk_0"
} */

data_disks = [
  {
    name                 = "vm-dga-customsapp-devops_DataDisk_0"
    storage_account_type = "Premium_LRS"
    type                 = "PremiumSSD_LRS"
    disk_size_gb         = "256"
    create_option        = "Empty"
    os_type              = "Linux"
    managed_disk_id      = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-dga-customsapp/providers/Microsoft.Compute/disks/vm-dga-customsapp-devops_DataDisk_0"
    attach_setting = {
      lun     = 0
      caching = "None"
      #create_option = "Attach"
    }
  }
]

virtual_network_name                = "vnet-dga-customsapp-uaenorth"
virtual_network_resource_group_name = "rg-dga-customsapp"
subnet_name                         = "snet-dgacustomsapp-aks-lb"
new_network_interface = {
  name                           = "vm-dga-customsapp-de304"
  resource_group_name            = "rg-dga-customsapp"
  accelerated_networking_enabled = true
  ip_configurations = [
    {
      name                          = "ipconfig1"
      private_ip_address_allocation = "Dynamic"
      private_ip_address            = "10.233.12.11"
    }
  ]
}

os_profile_linux_config = {
  disable_password_authentication = true
}

identity = {
  type = "SystemAssigned"
}
source_image_reference = {
  publisher = "Canonical"
  offer     = "UbuntuServer"
  sku       = "18.04-LTS"
  version   = "latest"
}

os_profile = {
  computer_name  = "vm-dga-customsapp-devops"
  admin_username = "azureuser"
}

boot_diagnostics                     = true
boot_diagnostics_storage_account_uri = ""


admin_ssh_keys = [
  {
    public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQD/T4riXu4Y9n1UtSHAPn7W6UT79E3Fi7auZ45T8jUwgEC0NqdS70xNU9ZCYZDxAUwgUm8k49WHmKOcjgTk9zV92sE9hkeNpldAN8gH7f/vMNCVcffiRaLDOctt8fw9lLOiYh/+C4UGSrZbZsqx5SQ22dSH4YP00fgT5M5FzquYSvLXEslXSIlgsOlNUuCytDAZxBUuZ+9ZeDucHz5YpT0HXuEFUXOo08h3FN5sFGq0x8U1LvHXAphSkn9gYqL++05G7Yuqb7inUSvYDTcLJ2l72gn/oUvK3w+o6J99fVLkZ1ENOoMtcW6QZ4o8vJ74AG2lKqDZjz1Ng7Aq/NuwI3wyS/EEiQDU3e7CoCo5Fby2ue2TZjlENGH8jG4zJ89zRRZo6FPacorws6Ts1iuQE/2i/UV0aAwjTHdr2dD01qqB70IQZ03/lmB4zOQjmiHAGkTlqWJaq43ZuIIRhcpCf3ieXTqjsZU3vniYwXBRppPGDPPUeYnlKF/yOMlQLE2vc18="
  }
]

tags = {
  "Application Name"  = "DGA customs ",
  "Application Owner" = "Hussain "
  "ENV"               = "DEV"
}

delete_data_disks_on_termination = false
delete_os_disk_on_termination    = false
