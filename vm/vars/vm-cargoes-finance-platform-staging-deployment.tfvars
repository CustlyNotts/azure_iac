subscription_id     = "f3d35456-12f8-4897-a1c3-2bb59e949ec5"
resource_group_name = "CARGOES-FINANCE-STAGING"
name                = "cargoes-finance-platform-staging-deployment"
os_simple           = "UbuntuServer"
size                = "Standard_B2s"
image_os            = "linux"
vmimport            = "enabled"
os_disk = {
  caching              = "None"
  storage_account_type = "StandardSSD_LRS"
  create               = "FromImage"
  name                 = "cargoes-finance-platform-staging-deploymeOS__1_2290bc9e41f5471a8e243c6d59b8fbdc"
  disk_size_gb         = "30"
  type                 = "StandardSSD_LRS"
}
#boot_diagnostics_storage_account_uri = ""
boot_diagnostics                    = false
virtual_network_name                = "cargoes-finance-staging-vnet"
virtual_network_resource_group_name = "cargoes-finance-staging"
subnet_name                         = "cargoes-finance-platform-cluster-staging-subnet-2"
new_network_interface = {
  name                = "cargoes-finance-platform-staging-deployment-nic"
  resource_group_name = "cargoes-finance-staging"
  ip_configurations = [
    {
      name                          = "internal"
      private_ip_address_allocation = "Dynamic"
      private_ip_address            = "10.240.22.4"
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

#delete_data_disks_on_termination = false
#delete_os_disk_on_termination    = false

tags = {
  "Application Name"  = "Cargoes Finance"
  "Application Owner" = "Abhinav Sharma"
  "ENV"               = "DEV"
  "Owner"             = "Abhinav Sharma"
  "scheduler"         = "off=(M-F,0);on=(M-F,7);tz=Asia/Dubai"
}

os_profile_linux_config = {
  disable_password_authentication = true
}
os_profile = {
  computer_name  = "cargoes-finance-platform-staging-deployment"
  admin_username = "cargoesuser"
}
