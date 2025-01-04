subscription_id     = "039efcb8-56e2-459b-ad3c-68c086e8feb9"
resource_group_name = "rg-ecommerce-prod"
name                = "vmecommprd5"
size                = "Standard_D8s_v3"
image_os            = "windows"
vmimport            = "enabled"
os_simple           = "WindowsServer"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "Premium_LRS"
  create               = "FromImage"
  name                 = "vmecommprd5_OsDisk_1_9c06380d14ce432ba0b052321c4ddb54"
  disk_size_gb         = "127"
  type                 = "Premium_LRS"
}
boot_diagnostics_storage_account_uri = ""
boot_diagnostics                     = true
virtual_network_name                 = "vnet-ecommerce-prod"
virtual_network_resource_group_name  = "rg-ecommerce-infra-prod"
subnet_name                          = "snet-ecommerce-prod"
new_network_interface = {
  name                = "vmecommprd5837"
  resource_group_name = "rg-ecommerce-prod"
  ip_configurations = [
    {
      name                          = "ipconfig1"
      private_ip_address_allocation = "Dynamic"
      private_ip_address            = "10.165.106.18"
    }
  ]
}
disable_password_authentication = true
identity = {
  type = "SystemAssigned"
}




delete_data_disks_on_termination = false
delete_os_disk_on_termination    = false

tags = {
  "Application Name" : "Ecommerce (Dubuy & DM)",
  "Application Owner" : "Arup Sarkar",
  "ENV" : "PROD",
  "Last Backup" : "01/15/2024, 05:22:17 PM"
}


