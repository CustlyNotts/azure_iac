subscription_id     = <subscription_id>
resource_group_name = "RG-LCIT-PROD"
name                = "vm-lcit-prod-activemq"
#os_simple           = "CentOS"
size     = "Standard_D2s_v3"
image_os = "linux"
vmimport = "enabled"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "StandardSSD_LRS" #this is used azurerm_linux_virtual_machine
  create               = "FromImage"
  name                 = "vm-lcit-prod-activemq_OsDisk_1_43c15119885742d9a057190c36439e02"
  disk_size_gb         = "30"
  type                 = "StandardSSD_LRS"
  storage_account_type = "Standard_LRS"
  os_type              = "Linux"
  managed_disk_id      = "/subscriptions/7bace25e-b7ab-4946-85c9-7caf3a4c49fa/resourceGroups/RG-LCIT-PROD/providers/Microsoft.Compute/disks/vm-lcit-prod-activemq_OsDisk_1_43c15119885742d9a057190c36439e02"
}

virtual_network_name                = "vnet-lcit-prod"
virtual_network_resource_group_name = "rg-lcit-infra-prod"
subnet_name                         = "snet-common"
new_network_interface = {
  name                           = "vm-lcit-prod-acti950"
  resource_group_name            = "rg-lcit-prod"
  accelerated_networking_enabled = true
  ip_configurations = [
    {
      name                          = "ipconfig1"
      private_ip_address_allocation = "Dynamic"
      private_ip_address            = "10.170.41.5"
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
  publisher = "OpenLogic"
  offer     = "CentOS"
  sku       = "7_9-gen2"
  version   = "latest"
}

os_profile = {
  computer_name  = "vm-lcit-prod-activemq"
  admin_username = "azureuser"
}

boot_diagnostics                     = true
boot_diagnostics_storage_account_uri = ""

tags = {
  "Application Name"  = "lcit",
  "Application Owner" = "Daniel Stuart/Linu Joseph/Pradeesh Raju"
  "ENV"               = "PROD"
  "AutoShutdown"      = "true"
  "Last Backup"       = "10/30/2023, 09:11:42 PM"
  "scheduler"         = "off=(M-F,15);on=(M-F,5);tz=Asia/Dubai"
}

delete_data_disks_on_termination = false
delete_os_disk_on_termination    = false


