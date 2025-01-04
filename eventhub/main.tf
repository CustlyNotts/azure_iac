resource "azurerm_eventhub_namespace" "current" {
  name                = lower("${var.name}")
  resource_group_name = var.resource_group_name
  location            = data.azurerm_resource_group.current.location
  sku                 = var.sku
  capacity            = var.capacity
  zone_redundant      = true

  public_network_access_enabled = var.public_network_access_enabled
  network_rulesets {

    default_action                 = "Allow"
    ip_rule                        = []
    public_network_access_enabled  = false
    trusted_service_access_enabled = true
    virtual_network_rule           = []

  }

  tags = var.tags
}

# resource "azurerm_eventhub" "eventhub" {
#   namespace_name = 
#   resource_group_name = var.resource_group_name
#   location            = data.azurerm_resource_group.current.location
#   name                = lower("${var.name}")
#   partition_count     = 2
#   message_retention   = 1
# }