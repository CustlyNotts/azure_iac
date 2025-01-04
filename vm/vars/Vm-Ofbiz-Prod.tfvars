subscription_id     = <subscription_id>
resource_group_name = "rg-ofbiz-prod"
name                = "Vm-Ofbiz-Prod"
os_simple           = "linux"
size                = "Standard_D2s_v3"
image_os            = "linux"
vmimport            = "enabled"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "Premium_LRS"
  create               = "Attach"
  name                 = "Vmnauofbizprod1_OsDisk_1_Lat"
  disk_size_gb         = "32"
  type                 = "Premium_LRS"
}
boot_diagnostics_storage_account_uri = ""
boot_diagnostics                     = true
virtual_network_name                 = "Vnet-Ofbiz"
virtual_network_resource_group_name  = "Rg-Ofbiz-Prod"
subnet_name                          = "Prod"
new_network_interface = {
  name                = "vm-ofbiz-prod310"
  resource_group_name = "Rg-Ofbiz-Prod"
  ip_configurations = [
    {
      name                          = "ipconfig1"
      private_ip_address_allocation = "Dynamic"
      private_ip_address            = "10.236.64.4"
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
  "Application Name" : "Ofbiz",
  "Application Owner" : "Ibrahim Ali Al-Ali",
  "ENV" : "PROD",
  "Last Backup" : "01/10/2024, 05:06:18 PM"
}

delete_data_disks_on_termination = false
delete_os_disk_on_termination    = false