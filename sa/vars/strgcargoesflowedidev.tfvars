subscription_id     = <subscription_id>
name                     = "strgcargoesflowedidev"
resource_group_name      = "rg-cargoesflowEDI-dev"
account_tier             = "Standard"
account_kind             = "StorageV2"
account_replication_type = "RAGRS"
soft_delete_enabled      = false
#delete_retention_days           = 7
#container_delete_retention_days = 7
#cross_tenant_replication_enabled  = 
min_tls_version                   = "TLS1_2"
allow_nested_items_to_be_public   = true
public_network_access_enabled     = true
infrastructure_encryption_enabled = false
#cross_tenant_replication_enabled  = false
subnet_ids = [
    "/subscriptions/82e3e8d8-3e5b-42e4-87cf-be360dbacb3a/resourceGroups/rg-cargoes-boomi-nonprod/providers/Microsoft.Network/virtualNetworks/vnet-cargoes-boomi-nonprod/subnets/snet-cargoes-boomi-nonprod",
    "/subscriptions/0f1aad42-836d-40a7-bc3d-13587ecdb839/resourceGroups/rg-metallicgw_uaenorth-prod/providers/Microsoft.Network/virtualNetworks/vnet-metallicgw_uaenorth-prod/subnets/snet-prvtlnk",
    "/subscriptions/a7831bc0-3c70-4db7-95c4-62d614caf575/resourceGroups/rg-trackingservice-dev-infra/providers/Microsoft.Network/virtualNetworks/Vnet-trackingservice-dev/subnets/snet-nonaks-dev",
    "/subscriptions/a7831bc0-3c70-4db7-95c4-62d614caf575/resourceGroups/rg-trackingservice-dev-infra/providers/Microsoft.Network/virtualNetworks/Vnet-trackingservice-dev/subnets/snet-functionapp-dev",
    "/subscriptions/a7831bc0-3c70-4db7-95c4-62d614caf575/resourceGroups/rg-trackingservice-dev-infra/providers/Microsoft.Network/virtualNetworks/Vnet-trackingservice-dev/subnets/snet-railtracking-nonprod",
]
all_network_access_enabled = false
#network_rules    = "allow"


allowed_ips = [
             "103.183.82.20",
             "103.87.49.2",
             "13.127.101.47",
             "13.59.151.19",
             "13.70.72.192",
             "13.70.72.207",
             "13.70.78.224",
             "13.70.78.255",
             "13.72.243.10",
             "192.102.222.0/24",
             "192.102.222.15",
             "195.145.233.241",
             "20.203.40.27",
             "20.213.202.51",
             "20.213.202.84",
             "20.216.39.153",
             "20.235.47.22",
             "20.70.220.192",
             "20.70.220.223",
             "20.70.220.224",
             "20.70.220.239",
             "212.23.156.236",
             "3.131.79.50",
             "3.134.42.162",
             "3.138.213.208",
             "3.15.96.44",
             "3.19.44.133",
             "3.223.123.75",
             "3.6.240.85",
             "34.197.247.251",
             "52.237.214.72",
             "52.237.220.122",
             "54.210.201.189",
             "54.85.159.20",
             "79.171.88.4",
             "79.171.88.5",
             "8.39.170.0/24",
             "8.39.170.190",
]
bypass      = ["AzureServices"]

tags = {
  "Application Name" : "Flow EDI Integration",
  "Application Owner" : "Mostafa",
  "ENV" : "DEV",
  "PrivitizationExemption" = "True"
}
is_hns_enabled                     = true 
large_file_share_enabled           = false
primary_blob_endpoint              = "https://strgcargoesflowedidev.blob.core.windows.net/"
#primary_blob_host                  = "strgcargoesflowedidev.blob.core.windows.net"
primary_dfs_endpoint               = "https://strgcargoesflowedidev.dfs.core.windows.net/" 
#primary_dfs_host                   = "strgcargoesflowedidev.dfs.core.windows.net"
primary_file_endpoint              = "https://strgcargoesflowedidev.file.core.windows.net/"
primary_file_host                  = "strgcargoesflowedidev.file.core.windows.net"
primary_location                   = "uaenorth" 
primary_queue_endpoint             = "https://strgcargoesflowedidev.queue.core.windows.net/" 
#primary_queue_host                 = "strgcargoesflowedidev.queue.core.windows.net" 
primary_table_endpoint             = "https://strgcargoesflowedidev.table.core.windows.net/" 
primary_table_host                 = "strgcargoesflowedidev.table.core.windows.net" 
    
#primary_web_endpoint               = "https://strgcargoesflowedidev.z1.web.core.windows.net/"      
primary_web_host                   = "strgcargoesflowedidev.z1.web.core.windows.net" 
secondary_blob_endpoint            = "https://strgcargoesflowedidev-secondary.blob.core.windows.net/" 
#secondary_blob_host                = "strgcargoesflowedidev-secondary.blob.core.windows.net"    
#secondary_dfs_endpoint             = "https://strgcargoesflowedidev-secondary.dfs.core.windows.net/" 
#secondary_dfs_host                 = "strgcargoesflowedidev-secondary.dfs.core.windows.net" 
secondary_location                 = "uaecentral"   
      /* secondary_queue_endpoint           = "https://strgcargoesflowedidev-secondary.queue.core.windows.net/"   
      secondary_queue_host               = "strgcargoesflowedidev-secondary.queue.core.windows.net"   
      
      secondary_table_endpoint           = "https://strgcargoesflowedidev-secondary.table.core.windows.net/"   
      secondary_table_host               = "strgcargoesflowedidev-secondary.table.core.windows.net"   
   
      secondary_web_endpoint             = "https://strgcargoesflowedidev-secondary.z1.web.core.windows.net/"   
      secondary_web_host                 = "strgcargoesflowedidev-secondary.z1.web.core.windows.net"   
  */
      sftp_enabled                       = true
     