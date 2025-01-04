subscription_id     = <subscription_id>
resource_group_name = "Rg-nau-prod-dr"
name                = "vm-nauofbiz-prod-dr"
os_simple           = ""
size                = "Standard_B2s"
image_os            = "linux"
vmimport            = "enabled"
os_disk = {
  caching              = "ReadWrite",
  storage_account_type = "Premium_LRS",
  create               = "FromImage",
  name                 = "vm-nauofbiz-prod-dr_OsDisk_1_d169dbff3d154201812913e02b1faae9",
  disk_size_gb         = "32",
  type                 = "Premium_LRS"
}
#boot_diagnostics_storage_account_uri = "https://bootdiagdpwvm.blob.core.windows.net/"
#boot_diagnostics                     = True
virtual_network_name                = "vnet-nau-aks-dr"
virtual_network_resource_group_name = "Rg-nau-prod-dr"
subnet_name                         = "snet-nau-shared-dr"
new_network_interface = {
  name                = "vm-nauofbiz-prod-dr675"
  resource_group_name = "Rg-nau-prod-dr"
  ip_configurations = [
    {
      name                          = "ipconfig1"
      private_ip_address_allocation = "Dynamic"
      private_ip_address            = ""
    }
  ]
}
#disable_password_authentication = True
#identity = {
#type = "SystemAssigned"
#   }

admin_ssh_keys = [
  {
    public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQD/T4riXu4Y9n1UtSHAPn7W6UT79E3Fi7auZ45T8jUwgEC0NqdS70xNU9ZCYZDxAUwgUm8k49WHmKOcjgTk9zV92sE9hkeNpldAN8gH7f/vMNCVcffiRaLDOctt8fw9lLOiYh/+C4UGSrZbZsqx5SQ22dSH4YP00fgT5M5FzquYSvLXEslXSIlgsOlNUuCytDAZxBUuZ+9ZeDucHz5YpT0HXuEFUXOo08h3FN5sFGq0x8U1LvHXAphSkn9gYqL++05G7Yuqb7inUSvYDTcLJ2l72gn/oUvK3w+o6J99fVLkZ1ENOoMtcW6QZ4o8vJ74AG2lKqDZjz1Ng7Aq/NuwI3wyS/EEiQDU3e7CoCo5Fby2ue2TZjlENGH8jG4zJ89zRRZo6FPacorws6Ts1iuQE/2i/UV0aAwjTHdr2dD01qqB70IQZ03/lmB4zOQjmiHAGkTlqWJaq43ZuIIRhcpCf3ieXTqjsZU3vniYwXBRppPGDPPUeYnlKF/yOMlQLE2vc18="
  }
]

tags = {
  "Application Name"  = "NAU"
  "Application Owner" = "Ibrahim Ali Al-Ali"
  "ENV"               = "PROD"
}

delete_data_disks_on_termination = false
delete_os_disk_on_termination    = false