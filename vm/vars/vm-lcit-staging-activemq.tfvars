subscription_id     = <subscription_id>
resource_group_name = "RG-LCIT-STAGING"
name                = "vm-lcit-staging-activemq"
#os_simple           = "CentOS"
size     = "Standard_D2s_v3"
image_os = "linux"
vmimport = "enabled"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "StandardSSD_LRS" #this is used azurerm_linux_virtual_machine
  create               = "FromImage"
  name                 = "vm-lcit-staging-activemq_OsDisk_1_8cd1c073f7d34552bbbac55505dec4f4"
  disk_size_gb         = "128"
  type                 = "StandardSSD_LRS"
  storage_account_type = "Standard_LRS"
  os_type              = "Linux"
  managed_disk_id      = "/subscriptions/7bace25e-b7ab-4946-85c9-7caf3a4c49fa/resourceGroups/RG-LCIT-STAGING/providers/Microsoft.Compute/disks/vm-lcit-staging-activemq_OsDisk_1_8cd1c073f7d34552bbbac55505dec4f4"
}

virtual_network_name                = "vnet-lcit-nonprod"
virtual_network_resource_group_name = "rg-lcit-infra-nonprod"
subnet_name                         = "snet-common"
new_network_interface = {
  name                           = "vm-lcit-staging-a614"
  resource_group_name            = "rg-lcit-staging"
  accelerated_networking_enabled = true
  ip_configurations = [
    {
      name                          = "ipconfig1"
      private_ip_address_allocation = "Dynamic"
      private_ip_address            = "10.170.9.5"
    }
  ]
}

os_profile_linux_config = {
  disable_password_authentication = false
}

identity = {
  type = "SystemAssigned"
}
source_image_reference = {
  publisher = "procomputers"
  offer     = "centos-8"
  sku       = "centos-8"
  version   = "latest"
}

plan = {
  name      = "centos-8"
  product   = "centos-8"
  publisher = "procomputers"
}

os_profile = {
  computer_name  = "vm-lcit-staging-activemq"
  admin_username = "azureuser"
}

boot_diagnostics                     = true
boot_diagnostics_storage_account_uri = ""

tags = {
  "Application Name"  = "LCIT",
  "Application Owner" = "Daniel Stuart/Linu Joseph/Pradeesh Raju"
  "ENV"               = "STAGING"
  "scheduler"         = "off=(M-F,15);on=(M-F,5);tz=Asia/Dubai"
}

delete_data_disks_on_termination = false
delete_os_disk_on_termination    = false