
resource "kubernetes_namespace" "current" {
  metadata {
    name = "kube-prometheus-stack"
  }
  lifecycle {
    ignore_changes = [
      metadata.0.annotations["cattle.io/status"],
      metadata.0.annotations["lifecycle.cattle.io/create.namespace-auth"]
    ]
  }
}

resource "kubernetes_manifest" "grafana_configmaps" {
  for_each = fileset("${path.root}/helm/values/grafana-configmaps/", "*.yaml")
  manifest = yamldecode(file("${path.root}/helm/values/grafana-configmaps/${each.value}"))
  depends_on = [
    helm_release.kube_prometheus_stack
  ]
}

resource "kubernetes_config_map" "snmp_exporter_configmap" {
  metadata {
    name      = "snmp-exporter-config"
    namespace = "kube-prometheus-stack"
  }
  data = {
    "snmp.yml" = "${file("${path.root}/helm/values/snmp.yaml")}"
  }
}

resource "kubernetes_secret" "thanos_objstore_config" {
  metadata {
    name      = "thanos-objstore-config"
    namespace = kubernetes_namespace.current.id
  }

  data = {
    "thanos.yaml" = <<EOF
      type: AZURE
      config:
        storage_account: "${data.azurerm_storage_account.current.name}"
        storage_account_key: "${data.azurerm_storage_account.current.primary_access_key}"
        container: "metrics"
        endpoint: "blob.core.windows.net"
        max_retries: 10
    EOF
  }
}

resource "helm_release" "kube_prometheus_stack" {
  name       = "kube-prometheus-stack"
  namespace  = kubernetes_namespace.current.id
  wait       = false
  repository = "https://prometheus-community.github.io/helm-charts"
  chart      = "kube-prometheus-stack"
  values = [
    file("${path.root}/helm/values/kube-prometheus-stack.yaml")
  ]
}

resource "helm_release" "prometheus_snmp_exporter" {
  name      = "prometheus-snmp-exporter"
  namespace = kubernetes_namespace.current.id
  # wait       = false
  repository = "https://prometheus-community.github.io/helm-charts"
  chart      = "prometheus-snmp-exporter"
  values = [
    file("${path.root}/helm/values/prometheus-snmp-exporter.yaml")
  ]
  depends_on = [
    kubernetes_config_map.snmp_exporter_configmap
  ]
}

resource "helm_release" "thanos" {
  name      = "thanos"
  namespace = kubernetes_namespace.current.id
  wait      = false
  chart     = "oci://registry-1.docker.io/bitnamicharts/thanos"
  values = [
    templatefile("${path.root}/helm/values/thanos.yaml", { storage_account = data.azurerm_storage_account.current.name, storage_account_key = data.azurerm_storage_account.current.primary_access_key })
  ]
}

resource "helm_release" "opencost" {
  name       = "opencost"
  namespace  = kubernetes_namespace.current.id
  repository = "https://opencost.github.io/opencost-helm-chart"
  chart      = "opencost"
  values = [
    file("${path.root}/helm/values/opencost.yaml")
  ]
  depends_on = [
    helm_release.kube_prometheus_stack
  ]
}
