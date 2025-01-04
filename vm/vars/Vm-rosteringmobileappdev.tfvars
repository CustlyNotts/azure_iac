subscription_id     = <subscription_id>
resource_group_name = "rg-rosteringmobileapp-dev"
name                = "vm-rosteringmobileapp-dev"
image_os            = "linux"
os_simple           = "UbuntuServer"
size                = "Standard_D2s_v3"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "StandardSSD_LRS"
}
virtual_network_name                = "Vnet-Rostima"
virtual_network_resource_group_name = "Rg-Vnet"
subnet_name                         = "Snet_Rostima_Prod"
new_network_interface = {
  ip_configurations = [
    {
      private_ip_address_allocation = "Dynamic"
      #private_ip_address            = "10.154.4.15"
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
  "Application Name" : "Rostering Mobile App",
  "Application Owner" : "Hasaan Malik",
  "ENV" : "Dev",
  "RITM" : "RITM0090635"
}