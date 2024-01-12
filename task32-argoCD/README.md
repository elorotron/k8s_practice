# install argoCD in cluster
# kubectl create namespace argocd
# kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
#
# expose port to argocd-server
#
# Creater secret for nginx auth
# kubectl -n webserver create secret generic htpasswd-secret --from-file="/home/ubuntu/github/k8s_helmcharts/HelmCharts/web-server-helmchart/.htpasswd"