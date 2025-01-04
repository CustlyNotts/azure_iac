subscription_id     = "3f73c166-e295-4b4f-a2bc-ef5a0a63b7a4"
resource_group_name = "RG-ROS-PROD"
name                = "VM-ROSSELFHOSTEDAGENT-01-PROD"
os_simple           = "0001-com-ubuntu-server-focal"
size                = "Standard_B2ms"
image_os            = "linux"
vmimport            = "enabled"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "Standard_LRS"
  create               = "FromImage"
  name                 = "vm-rosSelfhostedagent-01-prod_disk1_011f08a9ada1409fba4f251f96e827f3"
  disk_size_gb         = "30"
  type                 = "Standard_LRS"
}
boot_diagnostics_storage_account_uri = ""
boot_diagnostics                     = true
virtual_network_name                 = "vnet-ros-prod"
virtual_network_resource_group_name  = "rg-ros-prod"
subnet_name                          = "snet-ros-shared"
new_network_interface = {
  name                = "nic-vm-ros-01-prod"
  resource_group_name = "rg-ros-prod"
  ip_configurations = [
    {
      name                          = "ipconfig1"
      private_ip_address_allocation = "Dynamic"
      private_ip_address            = ""
    }
  ]
}
disable_password_authentication = true
identity = {
  type = "SystemAssigned"
}

admin_ssh_keys = [
  {
    public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQD/T4riXu4Y9n1UtSHAPn7W6UT79E3Fi7auZ45T8jUwgEC0NqdS70xNU9ZCYZDxAUwgUm8k49WHmKOcjgTk9zV92sE9hkeNpldAN8gH7f/vMNCVcffiRaLDOctt8fw9lLOiYh/+C4UGSrZbZsqx5SQ22dSH4YP00fgT5M5FzquYSvLXEslXSIlgsOlNUuCytDAZxBUuZ+9ZeDucHz5YpT0HXuEFUXOo08h3FN5sFGq0x8U1LvHXAphSkn9gYqL++05G7Yuqb7inUSvYDTcLJ2l72gn/oUvK3w+o6J99fVLkZ1ENOoMtcW6QZ4o8vJ74AG2lKqDZjz1Ng7Aq/NuwI3wyS/EEiQDU3e7CoCo5Fby2ue2TZjlENGH8jG4zJ89zRRZo6FPacorws6Ts1iuQE/2i/UV0aAwjTHdr2dD01qqB70IQZ03/lmB4zOQjmiHAGkTlqWJaq43ZuIIRhcpCf3ieXTqjsZU3vniYwXBRppPGDPPUeYnlKF/yOMlQLE2vc18="
  }
]

tags = {
  "Application Name" : "ros",
  "Application Owner" : "Tapabrata Dasgupta",
  "ENV" : "PROD",
  "RITM" : "RITM0032091",
  "Last Backup" : "03/06/2024, 05:04:29 PM"
}
os_profile_linux_config = {
  disable_password_authentication = false
}

os_profile = {
  computer_name  = "vm-rosSelfhostedagent-01-prod"
  admin_username = "Azureuser"
}