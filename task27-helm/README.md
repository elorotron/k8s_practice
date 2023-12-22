# kubectl create namespace monitoring
# helm install -n monitoring prometheus prometheus-community/kube-prometheus-stack -f grafana-prometheus-values.yml
# kubectl apply -n monitoring -f pv.yml
# kubectl -n monitoring edit svc prometheus-grafana 
# edit ClusterIp to LoadBalancer
# kubectl -n monitoring get svc
# go on ip address of load balancer
# kubectl get secrets
# kubectl -n monitoring get secret prometheus-grafana -o jsonpath="{.data.admin-user}" | base64 --decode ; echo
# kubectl -n monitoring get secret prometheus-grafana -o jsonpath="{.data.admin-password}" | base64 --decode ; echo



# helm install promtail grafana/promtail
# helm install loki grafana/loki

# helm install loki -n loki grafana/loki -f loki.yaml
# helm install promtail -n promtail grafana/promtail -f promtail.yaml




# helm install task27 loki-stack/ -f loki-stack.yaml 