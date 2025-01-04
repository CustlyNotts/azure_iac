subscription_id     = <subscription_id>
resource_group_name = "RG-SONARQUBE-DE"
name                = "vm-sonarqube-de"
#os_simple           = "CentOS 7.9.2009"
size     = "Standard_B2ms"
image_os = "linux"
vmimport = "enabled"
zone     = "[]"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "Premium_LRS" #this is used azurerm_linux_virtual_machine
  create               = "FromImage"
  name                 = "vm-sonarqube-de_OsDisk_1_492cdbb2413143d89a3a742d87012d25"
  disk_size_gb         = "30"
  type                 = "Premium_LRS"
  storage_account_type = "Premium_LRS"
  os_type              = "Linux"
  managed_disk_id      = "/subscriptions/56a6b4b1-7256-4834-9817-e27c75f1ae05/resourceGroups/RG-SONARQUBE-DE/providers/Microsoft.Compute/disks/vm-sonarqube-de_OsDisk_1_492cdbb2413143d89a3a742d87012d25"
}

virtual_network_name                = "vnet-sonarqube-de"
virtual_network_resource_group_name = "rg-sonarqube-de"
subnet_name                         = "default"
new_network_interface = {
  name                           = "vm-sonarqube-de918"
  resource_group_name            = "rg-sonarqube-de"
  accelerated_networking_enabled = false
  ip_configurations = [
    {
      name                          = "ipconfig1"
      private_ip_address_allocation = "Dynamic"
      private_ip_address            = "10.0.1.4"
    }
  ]
}

os_profile_linux_config = {
  disable_password_authentication = true

  ssh_keys = {
    key_data = <<-EOT
                    ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC/lBbnHEdm8BFuIGhZ0QBq452d
                    ZRc1X3n+Ajm5Am+EgzCdIc3CsVRVqF7iehSw9j+Q/nxr+tAPTvbbZZXCLC/gPSy4
                    HZhwgBDRjBq0nXHx5t/2+5r8vkqqRzpS3buwaHeBJdI5eZbVzPg/LFAewgdcE3pa
                    ZYepkUbwW4IWXoY6g2oIOcBiLI7vBteMPydmo7zKcyFU1WN3qPWWx3LsT5tHDJBw
                    nY2kU1mArezpjcbdACKyyQ6walcFel4OpAi7kez7x1DU9icFw7kNqLELs5QCMoA/
                    LhEVhFuGMi/rbFQz/dxJ6acSKqvUIzs1NemZmABSlXFB6Sv3B7qqgG880wLakZNP
                    RQAO2GMnWeElX/ILsZFm6gyc91vTR3me7rqvmQiBMbg5xFWqI9Zb0n2ecTqGALmw
                    OcqZ9oFjDkZALBmDwrIJJPq7wRxhiwn39ZJMnnRfV31klCQLKLdREf5VCMNE2c+v
                    YLVLWMR1KIH7GXu+f3UJTsloq704NV8Ty/bfUvk= generated-by-azure
                EOT 
    path     = "/home/azureuser/.ssh/authorized_keys"
  }
}

identity = {
  type = "SystemAssigned"
}

source_image_reference = {
  publisher = "bitnami"
  offer     = "sonarqube"
  sku       = "6-4"
  version   = "latest"
}
plan = {
  name      = "6-4"
  product   = "sonarqube"
  publisher = "bitnami"
}

os_profile = {
  computer_name  = "vm-sonarqube-de"
  admin_username = "azureuser"
}

boot_diagnostics                     = true
boot_diagnostics_storage_account_uri = "https://stsonarqubede.blob.core.windows.net/"

/* boot_diagnostics = {
        enabled     = true 
        storage_uri = "" 
} */

tags = {
  "Application Name"  = "SONARQUBE de"
  "Application Owner" = "Daniel Stuart / pradeesh raju"
  "ENV"               = "DEV"
  "name"              = "sonarqubede"
}

delete_data_disks_on_termination = false
delete_os_disk_on_termination    = false
