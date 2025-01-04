subscription_id     = <subscription_id>
resource_group_name = "rg-crs-amr-prod"
name                = "vm-crs-amr-06"
image_os            = "linux"
os_simple           = "UbuntuServer"
size                = "Standard_E2s_v3"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "StandardSSD_LRS"
}
virtual_network_name                = "vnet-crs-amr-prod"
virtual_network_resource_group_name = "rg-crs-amr-prod"
subnet_name                         = "snet-crs-amr-prod"
new_network_interface = {
  ip_configurations = [
    {
      private_ip_address_allocation = "Static"
      private_ip_address            = "10.154.24.31"
    }
  ]
}
disable_password_authentication = false
identity = {
  type = "SystemAssigned"
}

extensions = [
  {
    name                 = "customScript"
    publisher            = "Microsoft.Azure.Extensions"
    type                 = "CustomScript"
    type_handler_version = "2.0"

    protected_settings = <<SETTINGS
  {    
    "fileUris": ["https://strgavdaib.blob.core.windows.net/meagentforlinux/installME.sh"],
    "commandToExecute": "sh installME.sh"
  }
  SETTINGS
  }
]
tags = {
  "Application Owner" : "Moinudeen AliAzad",
  "ENV" : "PROD",
  "Application Name" : "CRS application Americas Region",
  "RITM" : "RITM0074474"
}