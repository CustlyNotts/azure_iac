resource "azurestack_availability_set" "current" {
  name                         = var.availability_set_name
  location                     = var.resource_group.location
  resource_group_name          = var.resource_group.name
  platform_update_domain_count = var.platform_update_domain_count
  platform_fault_domain_count  = var.platform_fault_domain_count
  tags                         = var.tags
}