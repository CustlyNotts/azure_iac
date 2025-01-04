resource "helm_release" "kubecost" {
  count            = var.aks_workloads_enabled ? 1 : 0
  name             = "kubecost"
  namespace        = "monitoring"
  create_namespace = true
  wait             = false
  repository       = "https://kubecost.github.io/cost-analyzer"
  chart            = "cost-analyzer"
  version          = var.kubecost_version
  # chart            = "${path.module}/aks_workloads/charts/cost-analyzer/cost-analyzer-${var.kubecost_version}.tar.gz"
  set {
    name  = "kubecostToken"
    value = "aGVsbUBrdWJlY29zdC5jb20=xm343yadf98"
  }
  values = [
    var.kubecost_master ? templatefile("${path.module}/values/kubecost/master.yaml", { name = var.cluster_name, kubecost_ip = var.kubecost_ip }) : templatefile("${path.module}/values/kubecost/values.yaml", { name = var.cluster_name, kubecost_ip = var.kubecost_ip })
  ]
}

resource "helm_release" "newrelic" {
  count            = var.newrelic_enabled && var.aks_workloads_enabled ? 1 : 0
  name             = "newrelic-bundle"
  create_namespace = true
  namespace        = "newrelic"
  chart            = "${path.module}/charts/nri-bundle"
  values = [
    templatefile("${path.module}/values/newrelic/values.yaml", { name = var.cluster_name })
  ]
}

resource "helm_release" "nginx-ingress" {
  count            = var.nginx_ingress_enabled && var.aks_workloads_enabled ? 1 : 0
  name             = "nginx-ingress"
  create_namespace = true
  namespace        = "nginx-ingress"
  chart            = "${path.module}/charts/nginx-ingress"
  values = [
    file("${path.module}/values/nginx-ingress/values.yaml")
  ]
}

resource "kubernetes_secret" "azure-service-key" {
  count = var.aks_workloads_enabled ? 1 : 0
  metadata {
    name        = "azure-service-key"
    namespace   = "monitoring"
    annotations = {}
    labels      = {}
  }
  data = {
    "service-key.json" = jsonencode({
      subscriptionId = var.subscription_id
      serviceKey = {
        appId       = "c65d7458-0e1c-4215-af74-55ed3157e460"
        displayName = "KubecostAccess"
        password    = "HHw8Q~-X6VxU9lctIMBIO4cNM6CSI6rBObww7dtY"
        tenant      = "2bd16c9b-7e21-4274-9c06-7919f7647bbb"
      }
    })
  }
  depends_on = [
    helm_release.kubecost
  ]
}

resource "kubernetes_priority_class" "high-priority" {
  count = var.aks_workloads_enabled ? 1 : 0
  metadata {
    name = "high-priority"
  }
  value = 1000000
}