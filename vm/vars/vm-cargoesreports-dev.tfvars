subscription_id     = <subscription_id>
resource_group_name = "rg-cargoeslogistics-reports-dev"
name                = "vm-cargoesreports-dev"
image_os            = "windows"
os_simple           = "Windows10"
size                = "Standard_B2s"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "Standard_LRS"
}
virtual_network_name                = "vnet-cargoesLogisitics_dev"
virtual_network_resource_group_name = "rg-cargoeslogisticsdev-infra"
subnet_name                         = "snet-nonprod-dev"
new_network_interface = {
  ip_configurations = [
    {
      private_ip_address_allocation = "Static"
      private_ip_address            = "10.242.0.16"
    }
  ]
}
identity = {
  type = "SystemAssigned"
}
tags = {
  "Application Name"  = "Cargoes Logistics",
  "Application Owner" = "Ravi Pandey",
  "ENV"               = "Dev"
  "scheduler"         = "off=(M-U,17);on=(M-U,8);tz=Asia/Dubai"
}