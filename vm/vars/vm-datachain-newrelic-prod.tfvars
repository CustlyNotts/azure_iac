subscription_id     = "dc2a271c-2f36-4ca3-b3b6-79ada4cd5d6b"
resource_group_name = "RG-BLOCKCHAIN-PROD"
name                = "vm-datachain-newrelic-prod"
#os_simple           = ""
size     = "Standard_E2ds_v4"
image_os = "linux"
vmimport = "enabled"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "Premium_LRS"
  create               = "Attach"
  name                 = "vm-datachain-newrelic-prod_disk1_0373d54083204366be0ca815b22d1b82"
  disk_size_gb         = "30"
  type                 = "Premium_LRS"
}
boot_diagnostics_storage_account_uri = ""
boot_diagnostics                     = false
virtual_network_name                 = "vnet-blockchain-prod"
virtual_network_resource_group_name  = "rg-blockchain-infra-prod"
subnet_name                          = "snet-nonaks-prod"
new_network_interface = {
  name                = "vm-datachain-newrelic-prod736"
  resource_group_name = "rg-blockchain-prod"
  ip_configurations = [
    {
      name                          = "ipconfig1"
      private_ip_address_allocation = "Dynamic"
      private_ip_address            = "10.191.40.8"
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
  "Application Name" : "Datachain",
  "Application Owner" : "Jay Li / Jayakrishna Alwar",
  "ENV" : "PROD"
}
