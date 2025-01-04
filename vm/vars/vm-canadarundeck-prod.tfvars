subscription_id     = <subscription_id>
resource_group_name = "rg-canadarundeck-prod"
name                = "vm-canadarundeck-prod"
os_simple           = "UbuntuServer"
size                = "Standard_D2s_v3"
image_os            = "linux"
vmimport            = "enabled"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "StandardSSD_LRS" #this is used azurerm_linux_virtual_machine
  create               = "FromImage"
  name                 = "vm-canadarundeck-prod_OsDisk_1_7e51b781a2a144eb89a3d3357b0358a6"
  disk_size_gb         = "30"
  type                 = "StandardSSD_LRS"
  storage_account_type = "Standard_LRS"
  os_type              = "Linux"
  managed_disk_id      = "/subscriptions/c65610b4-f532-47fb-b450-632f88d21fa8/resourceGroups/rg-canadarundeck-prod/providers/Microsoft.Compute/disks/vm-canadarundeck-prod_OsDisk_1_7e51b781a2a144eb89a3d3357b0358a6"
}

virtual_network_name                = "vnet-cargoscanada-prod"
virtual_network_resource_group_name = "rg-cargoescanada-prod"
subnet_name                         = "snet-cargoscanada-prod"
new_network_interface = {
  name                = "vm-canadarundeck-prod123"
  resource_group_name = "rg-canadarundeck-prod"
  ip_configurations = [
    {
      name                          = "ipconfig1"
      private_ip_address_allocation = "Dynamic"
      private_ip_address            = "10.210.128.168"
    }
  ]
}
os_profile_linux_config = {
  disable_password_authentication = false
}

identity = {
  type = "SystemAssigned"
}

source_image_reference = {
  publisher = "canonical"
  offer     = "0001-com-ubuntu-server-focal"
  sku       = "20_04-lts-gen2"
  version   = "latest"
}

os_profile = {
  computer_name  = "vm-canadarundeck-prod"
  admin_username = "azureuser"
}

#boot_diagnostics = false
boot_diagnostics_storage_account_uri = ""

admin_ssh_keys = [
  {
    public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQD/T4riXu4Y9n1UtSHAPn7W6UT79E3Fi7auZ45T8jUwgEC0NqdS70xNU9ZCYZDxAUwgUm8k49WHmKOcjgTk9zV92sE9hkeNpldAN8gH7f/vMNCVcffiRaLDOctt8fw9lLOiYh/+C4UGSrZbZsqx5SQ22dSH4YP00fgT5M5FzquYSvLXEslXSIlgsOlNUuCytDAZxBUuZ+9ZeDucHz5YpT0HXuEFUXOo08h3FN5sFGq0x8U1LvHXAphSkn9gYqL++05G7Yuqb7inUSvYDTcLJ2l72gn/oUvK3w+o6J99fVLkZ1ENOoMtcW6QZ4o8vJ74AG2lKqDZjz1Ng7Aq/NuwI3wyS/EEiQDU3e7CoCo5Fby2ue2TZjlENGH8jG4zJ89zRRZo6FPacorws6Ts1iuQE/2i/UV0aAwjTHdr2dD01qqB70IQZ03/lmB4zOQjmiHAGkTlqWJaq43ZuIIRhcpCf3ieXTqjsZU3vniYwXBRppPGDPPUeYnlKF/yOMlQLE2vc18="
  }
]

tags = {
  # "Application Name"  = "rundeck",
  # "Application Owner" = "Daniel Stuart/Linu Joseph/Pradeesh Raju"
  # "ENV"               = "PROD"
}

delete_data_disks_on_termination = false
delete_os_disk_on_termination    = false