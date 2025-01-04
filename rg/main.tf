resource "azurerm_resource_group" "current" {
  name     = var.resource_group_name
  location = var.resource_group_location
  tags     = var.resource_group_tags

  lifecycle {
    prevent_destroy = true
    ignore_changes = [
      tags["Creator"],
    ]
  }
}
