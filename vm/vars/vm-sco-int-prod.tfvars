subscription_id     = <subscription_id>
resource_group_name = "rg-sco-integration-prod"
name                = "vm-sco-int-prod"
image_os            = "windows"
os_simple           = "MicrosoftWindowsServer"
size                = "Standard E2ads v5"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "StandardSSD_LRS"
}
virtual_network_name                = "vnet-sco-integration-prod"
virtual_network_resource_group_name = "rg-sco-integration-infra-prod"
subnet_name                         = "snet-sco-banking-agent-prod"
new_network_interface = {
  ip_configurations = [
    {
      private_ip_address_allocation = "Static"
      private_ip_address            = "10.4.32.5"
    }
  ]
}
identity = {
  type = "SystemAssigned"
}

tags = {
  "Application Owner" : "Premjith Nair",
  "ENV" : "PROD",
  "Application Name" : "SCO Fusion to Bank Integration",
  "RITM" : "RITM0068997"
}
