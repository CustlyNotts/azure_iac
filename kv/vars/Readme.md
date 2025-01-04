terraform import -var-file vars/kv-ecomm-prod-secrets.tfvars azurerm_key_vault.current /subscriptions/039efcb8-56e2-459b-ad3c-68c086e8feb9/resourceGroups/rg-ecommerce-infra-prod/providers/Microsoft.KeyVault/vaults/kv-ecomm-prod-secrets

terraform import -var-file vars/kv-ecomm-nonprod-secrets.tfvars "azurerm_private_endpoint.pe[0]" /subscriptions/039efcb8-56e2-459b-ad3c-68c086e8feb9/resourceGroups/rg-ecommerce-infra-nonprod/providers/Microsoft.Network/privateEndpoints/kv-ecomm-nonprod-pe

terraform import -var-file vars/kv-ecomm-nonprod-secrets.tfvars "azurerm_private_dns_zone_virtual_network_link.pdz-link[0]" /subscriptions/cf524703-9d5e-4aa2-bbe9-975fe083f66a/resourceGroups/rg-dnsdomains/providers/Microsoft.Network/privateDnsZones/privatelink.vaultcore.azure.net/virtualNetworkLinks/ecomm-vnet-nonprod


terraform import -var-file vars/kv-ecomm-nonprod-secrets.tfvars "azurerm_private_dns_zone.pdz[0]" /subscriptions/cf524703-9d5e-4aa2-bbe9-975fe083f66a/resourceGroups/rg-dnsdomains/providers/Microsoft.Network/privateDnsZones/privatelink.vaultcore.azure.net