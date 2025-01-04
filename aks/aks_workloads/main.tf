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
        appId       = <app_id>
        displayName = "KubecostAccess"
        password    = <password>
        tenant      = <tenant_id>
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