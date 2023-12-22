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
# dashboard to import: 15757