variable "subscription_id" {
  type    = string
  default = "1691759c-bec8-41b8-a5eb-03c57476ffdb"
}
variable "aks_cluster_name" {
  type    = string
  default = "aks-infra"
}
variable "aks_resource_group_name" {
  type    = string
  default = "rg-infrateam"
}
variable "storage_account_name" {
  type    = string
  default = "infrateamthanos"
}
variable "storage_account_resource_group_name" {
  type    = string
  default = "rg-infrateam"
}