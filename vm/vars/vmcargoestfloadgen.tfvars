subscription_id     = "f3d35456-12f8-4897-a1c3-2bb59e949ec5"
resource_group_name = "CARGOES-FINANCE-STAGING"
name                = "vmcargoestfloadgen"
os_simple           = "WindowsServer"
size                = "Standard_B4ms"
image_os            = "windows"
vmimport            = "enabled"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "Standard_LRS"
  create               = "FromImage"
  name                 = "vmcargoestfloadgen_OsDisk_1_89fd099f7cb0475c915fbb553be52d81"
  disk_size_gb         = "127"
  type                 = "Standard_LRS"
}
boot_diagnostics_storage_account_uri = ""
boot_diagnostics                     = true
virtual_network_name                 = "cargoes-finance-staging-vnet"
virtual_network_resource_group_name  = "cargoes-finance-staging"
subnet_name                          = "cargoes-finance-platform-cluster-staging-subnet-2"
new_network_interface = {
  name                = "vmcargoestfloadge274"
  resource_group_name = "cargoes-finance-staging"
  ip_configurations = [
    {
      name                          = "ipconfig1"
      private_ip_address_allocation = "Dynamic"
      private_ip_address            = "10.240.22.7"
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
  "Application Name" : "Cargoes Finance",
  "Application Owner" : "Abhinav Sharma",
  "ENV" : "DEV",

}

delete_data_disks_on_termination = false
delete_os_disk_on_termination    = false


os_profile_windows_config = {
  enable_automatic_upgrades = true
  provision_vm_agent        = true
}

os_profile = {
  computer_name  = "vmcargoestfload"
  admin_username = "localadmin"
}

