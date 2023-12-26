# Custom
# helm upgrade --install --create-namespace --values loki-values.yaml loki -n loki grafana/loki
#
# helm upgrade --install --values promtail-values.yaml promtail -n loki grafana/promtail
#
# helm upgrade --install --values prometheus-values.yaml prometheus -n loki prometheus-community/prometheus
#
# helm upgrade --install --values grafana-values.yaml grafana -n loki grafana/grafana
# kubectl get secret --namespace loki grafana -o jsonpath="{.data.admin-password}" | base64 --decode ; echo
#
# dashboard to import: 17375
# configure dashboard and alerting rules
#
# 
#
# helm install web-server web-server-helmchart/
# cpu rules
# avg(1 - rate(node_cpu_seconds_total{mode="idle", node="nodes-susel-k8s-xkpht"}[2m])) by (node) * 100
# avg(1 - rate(node_cpu_seconds_total{mode="idle", node="nodes-susel-k8s-xkphl"}[2m])) by (node) * 100
#
# memory rules
# 
# max(100 * (1 - ((avg_over_time(node_memory_MemFree_bytes{node="nodes-susel-k8s-xkpht"}[10m]) + avg_over_time(node_memory_Cached_bytes{node="nodes-susel-k8s-xkpht"}[10m]) + avg_over_time(node_memory_Buffers_bytes{node="nodes-susel-k8s-xkpht"}[10m])) / avg_over_time(node_memory_MemTotal_bytes{node="nodes-susel-k8s-xkpht"}[10m])))) by (node)
#
# max(100 * (1 - ((avg_over_time(node_memory_MemFree_bytes{node="nodes-susel-k8s-xkphl"}[10m]) + avg_over_time(node_memory_Cached_bytes{node="nodes-susel-k8s-xkphl"}[10m]) + avg_over_time(node_memory_Buffers_bytes{node="nodes-susel-k8s-xkphl"}[10m])) / avg_over_time(node_memory_MemTotal_bytes{node="nodes-susel-k8s-xkphl"}[10m])))) by (node)
#
#
# kubectl exec -n default <pod_name> -it -- /bin/sh
# stress --vm 1 --vm-bytes 1024M --vm-keep