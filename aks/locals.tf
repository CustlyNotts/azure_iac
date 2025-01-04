locals {
  private_dns_zone_name = join(".", slice(split(".", azurerm_kubernetes_cluster.current.private_fqdn), 1, length(split(".", azurerm_kubernetes_cluster.current.private_fqdn))))
  private_dns_zone_id   = "${var.subscription_id}/resourceGroups/${azurerm_kubernetes_cluster.current.node_resource_group}/providers/Microsoft.Network/privateDnsZones/${local.private_dns_zone_name}"
  # env                   = lookup(var.tags, "ENV")
}