subscription_id     = <subscription_id>
resource_group_name            = "rg-fortisoar-prod"
name                           = "vm-fortimssp-prod-2"
os_simple                      = "rockylinux free"
size                           = "Standard_D16ads_v5"
image_os                       = "linux"
vmimport                       = "enabled"
zones                          =  [ "1" ]
zone			       = "1"
os_disk = {
  caching                        = "ReadWrite"
  storage_account_type           = "Premium_LRS"
  create                         = "FromImage"
  name                           = "vm-fortimssp-prod-2_OsDisk_1_9c5cf68686374b44a947c8c716add1ef"
  disk_size_gb                   = "128"
  type                           = "Premium_LRS"
  os_type                        = "Linux"
  managed_disk_id                = "/subscriptions/91398afa-7cd4-4407-b48d-769bd28f53c8/resourceGroups/RG-FORTISOAR-PROD/providers/Microsoft.Compute/disks/vm-fortimssp-prod-2_OsDisk_1_9c5cf68686374b44a947c8c716add1ef"
}
data_disks = [
  {
    name                 = "vm-fortimssp-prod-2_DataDisk_0"
    storage_account_type = "Premium_LRS"
    disk_size_gb         = 1024
    create_option        = "Empty"
    attach_setting = {
      lun           = 0
      caching       = "ReadWrite"
      create_option = "Attach"
    }
  },
  {
    name                 = "vm-fortimssp-prod-2_DataDisk_1"
    storage_account_type = "Premium_LRS"
    disk_size_gb         = 1024
    create_option        = "Empty"
    attach_setting = {
      lun           = 1
      caching       = "ReadWrite"
      create_option = "Attach"
    }
  }
]
virtual_network_name           = "vnet-fortisoar-int-prod"
virtual_network_resource_group_name = "rg-fortisoar-prod"
subnet_name                    = "snet-fortisoar-int-prod"
new_network_interface = {
  name                           = "vm-fortimssp-prod-275_z1"
  resource_group_name            = "rg-fortisoar-prod"
  accelerated_networking_enabled = true
  ip_configurations              = [
    {
      name                           = "ipconfig1"
      private_ip_address_allocation  = "Dynamic"
      private_ip_address             = "10.48.0.164"
    }
  ]
}
os_profile_linux_config = {
  disable_password_authentication = true
}


source_image_reference = {
  publisher                      = "erockyenterprisesoftwarefoundationinc1653071250513"
  offer                          = "rockylinux"
  sku                            = "free"
  version                        = "latest"
}
os_profile = {
  computer_name                  = "vm-fortimssp-prod-2"
  admin_username                 = "azureuser"
}
boot_diagnostics                 = true
plan                             = {
  name                           = "free"
  product                        = "rockylinux"
  publisher                      = "erockyenterprisesoftwarefoundationinc1653071250513"  
}

boot_diagnostics_storage_account_uri = ""
admin_ssh_keys                 = [
  {
    public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDasxlTmyMsyT6nXc8JbqpI1FjPrYmxW4qwXcBGO952ky3BUhZu+wl/aCALLGRhG9bA+dQkTX5gtgWwoJ67/b3NgY/WxpPzGjWFofccckg32fuw9Cv1TWD2VJRajyDem2jqpkOxrMs6ZSjTrzNIAaZYzk0XxKbv93T34vnFunW5GMJqQ3Hdwko3luKOKshetADBv7Jbmr/1YqbcbyZI40tTAsUU+jfl6vXy9TJ/CyctEvecTc9gtG/zxdc6AfdETPIXGqLFLonYX7FjeNQ+RBYfNcewyICDjg9oH3RYSNxPzdoX5amj7x5wOG7p+MeqQMIbeIcVnjA6eVNLl+18z1EKa3S63D9hae96GgdDMtk6IayusP4ElkZyNnoW1RpTwoVN/1vdqjCC3ZRbMEMK8Eu3v0ERNQUICuAc08RfSO1wF1/KLfbbCDwohDlbLMY0gDHGFOC7WhNP7cnn3Lbxa2g2NYv3Pk003/FyvMooAeff+be0AtFvV7V9uN2DC6KixsU= generated-by-azure"
  }
]


tags = {
  "Application Name"               = "FortiSOAR"
  "Application Owner"              = "Kiran/Tariq"
  "ENV"                            = "PROD"
}
#delete_data_disks_on_termination = false
#delete_os_disk_on_termination  = false

#vm_additional_capabilities = {
#  hibernation_enabled = false
#  ultra_ssd_enabled = false
#}
