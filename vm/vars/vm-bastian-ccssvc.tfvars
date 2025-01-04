subscription_id     = "3b33091e-1cdc-4ea3-a1a9-112226376c1b"
resource_group_name = "RG-CARGOESCUSTOMS-SVC-PROD"
name                = "vm-bastian-ccssvc"
os_simple           = "0001-com-ubuntu-server-focal"
size                = "Standard_D2s_v3"
image_os            = "linux"
vmimport            = "enabled"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "StandardSSD_LRS"
  create               = "FromImage"
  name                 = "vm-bastian-ccssvc_OsDisk_1_2bedef7a3655458fb3ed22bba46a2c3b"
  disk_size_gb         = "30"
  type                 = "StandardSSD_LRS"
}
boot_diagnostics_storage_account_uri = ""
boot_diagnostics                     = true
virtual_network_name                 = "vnet-cargoescustoms-svc-prod"
virtual_network_resource_group_name  = "rg-cargoescustoms-svc-infra-prod"
subnet_name                          = "snet-bastion-cargoescustoms-svc-prd"
new_network_interface = {
  name                = "vm-bastian-ccssvc918"
  resource_group_name = "rg-cargoescustoms-svc-prod"
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
  "Application Name" : "Cargoes Customs",
  "Application Owner" : "Vijahat Trunboo",
  "ENV" : "PROD",
  "Last Backup" : "02/25/2024, 05:04:28 PM"
}
os_profile = {
  computer_name  = "vm-bastian-ccssvc"
  admin_username = "azureuser"
}
os_profile_linux_config = {
  disable_password_authentication = false
}
