locals {
  # IP Range Filter here is to allow azure portal access
  # https://learn.microsoft.com/en-us/azure/cosmos-db/how-to-configure-firewall#allow-requests-from-the-azure-portal
  cosmosdb_ip_range_azure = [
    "104.42.195.92/32",
    "40.76.54.131/32",
    "52.176.6.30/32",
    "52.169.50.45/32",
    "52.187.184.26/32"
  ]
}