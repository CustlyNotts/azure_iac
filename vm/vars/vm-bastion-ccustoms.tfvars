subscription_id     = <subscription_id>
resource_group_name = "rg-cargoes-app"
name                = "vm-bastion-ccustoms"
#os_simple           = "CentOS 7.9.2009"
size     = "Standard_D4s_v3"
image_os = "linux"
vmimport = "enabled"
zone     = "[]"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "StandardSSD_LRS" #this is used azurerm_linux_virtual_machine
  create               = "FromImage"
  name                 = "vm-bastion-ccustoms_OsDisk_1_2e0b809e9c8641a6bab99445c5bc1f5d"
  disk_size_gb         = "30"
  type                 = "StandardSSD_LRS"
  storage_account_type = "Standard_LRS"
  os_type              = "Linux"
  managed_disk_id      = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/rg-cargoes-app/providers/Microsoft.Compute/disks/vm-bastion-ccustoms_OsDisk_1_2e0b809e9c8641a6bab99445c5bc1f5d"
}

virtual_network_name                = "vnet-cargoes-customs"
virtual_network_resource_group_name = "rg-cargoes-app"
subnet_name                         = "snet-bastion-cargoes-customs"
new_network_interface = {
  name                           = "vm-bastion-ccusto477"
  resource_group_name            = "rg-cargoes-app"
  accelerated_networking_enabled = true
  ip_configurations = [
    {
      name                          = "ipconfig1"
      private_ip_address_allocation = "Dynamic"
      private_ip_address            = "10.155.8.4"
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
  computer_name  = "vm-bastion-ccustoms"
  admin_username = "azureuser"
}

#boot_diagnostics = true
boot_diagnostics_storage_account_uri = ""


admin_ssh_keys = [
  {
    public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQD/T4riXu4Y9n1UtSHAPn7W6UT79E3Fi7auZ45T8jUwgEC0NqdS70xNU9ZCYZDxAUwgUm8k49WHmKOcjgTk9zV92sE9hkeNpldAN8gH7f/vMNCVcffiRaLDOctt8fw9lLOiYh/+C4UGSrZbZsqx5SQ22dSH4YP00fgT5M5FzquYSvLXEslXSIlgsOlNUuCytDAZxBUuZ+9ZeDucHz5YpT0HXuEFUXOo08h3FN5sFGq0x8U1LvHXAphSkn9gYqL++05G7Yuqb7inUSvYDTcLJ2l72gn/oUvK3w+o6J99fVLkZ1ENOoMtcW6QZ4o8vJ74AG2lKqDZjz1Ng7Aq/NuwI3wyS/EEiQDU3e7CoCo5Fby2ue2TZjlENGH8jG4zJ89zRRZo6FPacorws6Ts1iuQE/2i/UV0aAwjTHdr2dD01qqB70IQZ03/lmB4zOQjmiHAGkTlqWJaq43ZuIIRhcpCf3ieXTqjsZU3vniYwXBRppPGDPPUeYnlKF/yOMlQLE2vc18="
  }
]

tags = {
  "Application Name"  = "Cargoes app",
  "Application Owner" = "hussain.hashimi@dpworld.com"
  "ENV"               = "DEV"
}

delete_data_disks_on_termination = false
delete_os_disk_on_termination    = false
