subscription_id     = <subscription_id>
resource_group_name = "RG-CARGOESLOGISTICS-PROD"
name                = "vm-cargoeslogisticsbuild-prod-2"
image_os            = "linux"
os_simple           = "UbuntuServer"
size                = "Standard_D2s_v3"
os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "Standard_LRS"
}
virtual_network_name                = "vnet-cargoeslogistics-prod"
virtual_network_resource_group_name = "rg-cargoeslogistics-infra-prod"
subnet_name                         = "snet-logistics-prod"
new_network_interface = {
  ip_configurations = [
    {
      private_ip_address_allocation = "Static"
      private_ip_address            = "10.242.42.17"
    }
  ]
}
disable_password_authentication = false
identity = {
  type = "SystemAssigned"
}
##
#tags = {
#  "Application Name"  = "Cargoes Flow,
# "Application Owner" = "Mostafa / Ravi K",
#"ENV"               = "PROD"
#"scheduler"         = "off=(M-U,17);on=(M-U,8);tz=Asia/Dubai"
#}

