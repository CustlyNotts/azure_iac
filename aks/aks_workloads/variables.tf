variable "subscription_id" {
  type = string
}

variable "aks_workloads_enabled" {
  type = bool
}
variable "kubecost_version" {
  type = string
}
variable "kubecost_ip" {
  type = string
}
variable "kubecost_master" {
  type = bool
}
variable "newrelic_enabled" {
  type = bool
}
variable "nginx_ingress_enabled" {
  type = bool
}

variable "resource_group" {
  type = string
}

variable "cluster_name" {
  type = string
}