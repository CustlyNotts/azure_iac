subscription_id     = <subscription_id>
resource_group_name = "rg-ecommerce-prod"
name                = "vmecommprd4"
image_os            = "windows"
size                = "Standard_D8s_v3"
vmimport            = "enabled"
os_simple           =  "WindowsServer"
os_disk = {
  name                 = "vmecommprd4_OsDisk_1_08be5701c5df4030915b13289a096cea"
  create               = "FromImage"
  caching              = "ReadWrite"
  storage_account_type = "Premium_LRS"
}
virtual_network_name                = "vnet-ecommerce-prod"
virtual_network_resource_group_name = "rg-ecommerce-infra-prod"
subnet_name                         = "snet-ecommerce-prod"
new_network_interface = {
  name                = "vmecommprd4617"
  ip_configurations = [
    {
      name                          = "ipconfig1"
      private_ip_address_allocation = "Dynamic"
      private_ip_address            = "10.165.106.17"
    }
  ]
}

identity = {
  type = "SystemAssigned"
}
boot_diagnostics_storage_account_uri = ""
boot_diagnostics                     = true

tags = {
    "Application Name": "Ecommerce (Dubuy & DM)",
    "Application Owner": "Arup Sarkar",
    "ENV": "PROD",
    "Last Backup": "01/14/2024, 05:21:08 PM"
}

delete_data_disks_on_termination = false
delete_os_disk_on_termination    = false