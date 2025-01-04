subscription_id     = "f3d35456-12f8-4897-a1c3-2bb59e949ec5"
resource_group_name = "rg-cargoes-finance-prod-dr"
name                = "vm-aks-jump-dr"
os_simple           = "UbuntuServer"
size                = "Standard_B2s"
image_os            = "linux"
vmimport            = "enabled"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "StandardSSD_LRS"
  create               = "FromImage"
  name                 = "vm-aks-jump-dr_OsDisk_1_2756df8361d7401f93866b4e24475afc"
  disk_size_gb         = "30"
  type                 = "StandardSSD_LRS"
  managed_disk_id      = "/subscriptions/f3d35456-12f8-4897-a1c3-2bb59e949ec5/resourceGroups/RG-CARGOES-FINANCE-PROD-DR/providers/Microsoft.Compute/disks/vm-aks-jump-dr_OsDisk_1_2756df8361d7401f93866b4e24475afc"
}
boot_diagnostics_storage_account_uri = ""
boot_diagnostics                     = true
virtual_network_name                 = "vnet-cargoes-finance-selfhostedagent-dr"
virtual_network_resource_group_name  = "rg-cargoes-finance-prod-dr"
subnet_name                          = "snet-cargoes-finance-selfhostedagent-dr"
new_network_interface = {
  name                = "vm-aks-jump-dr494"
  resource_group_name = "rg-cargoes-finance-prod-dr"
  ip_configurations = [
    {
      name                          = "ipconfig1"
      private_ip_address_allocation = "Dynamic"
      private_ip_address            = "10.240.48.5"
    }
  ]
}
os_profile_linux_config = {
  disable_password_authentication = false
}
os_profile = {
  computer_name  = "vm-aks-jump-dr"
  admin_username = "tf-admin"
}

identity = {
  #principal_id = "3222d952-6980-432b-9b96-55b346b7fda9"
  type = "SystemAssigned"
}

admin_ssh_keys = [
  {
    public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQD/T4riXu4Y9n1UtSHAPn7W6UT79E3Fi7auZ45T8jUwgEC0NqdS70xNU9ZCYZDxAUwgUm8k49WHmKOcjgTk9zV92sE9hkeNpldAN8gH7f/vMNCVcffiRaLDOctt8fw9lLOiYh/+C4UGSrZbZsqx5SQ22dSH4YP00fgT5M5FzquYSvLXEslXSIlgsOlNUuCytDAZxBUuZ+9ZeDucHz5YpT0HXuEFUXOo08h3FN5sFGq0x8U1LvHXAphSkn9gYqL++05G7Yuqb7inUSvYDTcLJ2l72gn/oUvK3w+o6J99fVLkZ1ENOoMtcW6QZ4o8vJ74AG2lKqDZjz1Ng7Aq/NuwI3wyS/EEiQDU3e7CoCo5Fby2ue2TZjlENGH8jG4zJ89zRRZo6FPacorws6Ts1iuQE/2i/UV0aAwjTHdr2dD01qqB70IQZ03/lmB4zOQjmiHAGkTlqWJaq43ZuIIRhcpCf3ieXTqjsZU3vniYwXBRppPGDPPUeYnlKF/yOMlQLE2vc18="
  }
]
tags = {
  "Application Name"  = "Cargoes Finance"
  "Application Owner" = "Abhinav Sharma"
  "ENV"               = "DR"
  "source"            = "terraform"
}

delete_data_disks_on_termination = false
delete_os_disk_on_termination    = false