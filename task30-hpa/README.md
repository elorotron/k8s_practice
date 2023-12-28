# https://speedscale.com/blog/how-to-test-kubernetes-autoscaling/
# https://github.com/kubernetes-sigs/metrics-server/tree/master/charts/metrics-server
#
# helm upgrade --install --namespace kube-system metrics-server metrics-server/metrics-server
#
# grafana
# helm upgrade --install --create-namespace --values grafana-values.yaml grafana -n monitoring grafana/grafana
# kubectl get secret --namespace monitoring grafana -o jsonpath="{.data.admin-password}" | base64 --decode ; echo
#
# Prometheus
# helm upgrade --install --values prometheus-values.yaml prometheus -n monitoring prometheus-community/prometheus
#
# dashboards
# import 1860
# add visualization with next metric
# kube_horizontalpodautoscaler_status_current_replicas{horizontalpodautoscaler="php-apache"}
# 
# Stress test
# kubectl run -i --tty load-generator --rm --image=busybox --restart=Never -- /bin/sh -c "while sleep 0.01; do wget -q -O- http://php-apache; done"