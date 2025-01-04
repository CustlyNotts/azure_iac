resource "azurerm_api_management" "apim" {
  name                = var.apimName
  resource_group_name = var.resource_group_name
  location            = coalesce(var.location, data.azurerm_resource_group.current.location)
  publisher_name      = var.apimPublisherName
  publisher_email     = var.apimPublisherEmail
  tags                = var.tags

  sku_name = "${var.apimSku}_${var.apimSkuCapacity}"

  identity {
    type = "SystemAssigned"
  }

  virtual_network_type = "Internal"

  virtual_network_configuration {
    subnet_id = var.subnet_id
  }

  #certificate {
  #encoded_certificate="null"
  # expiry     = "2024-04-23T07:33:16+00:00" 
  #store_name = "Root"
  # subject    = "CN=SSL, OU=DP world, O=DPW, L=Ind, S=Ind, C=India"
  # thumbprint = "EF420C58B2B83ACFEE6A9A545031C58AC585E93F"
  #}

  # policy {
  #   xml_link = var.tenantPolicyUrl
  # }
}