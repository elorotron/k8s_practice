# Create secret for auntification
### kubectl create secret generic htpasswd-secret --from-file=.htpasswd

# TLS
### for self-signet certificate
### openssl req -x509 -nodes -days 9999 -newkey rsa:2048 -keyout certs/ingress-tls.key -out certs/ingress-tls.crt
### kubectl create secret tls ingress-cert --namespace dev --key=certs/ingress-tls.key --cert=certs/ingress-tls.crt -o yaml

# Install ingress-nginx
### helm install my-release oci://ghcr.io/nginxinc/charts/nginx-ingress --version 1.1.0
### kubectl get po -n ingress-nginx
## Edit nginx-ingress deployment
### kubectl edit deploy <ingress-deployment>
### set - -enable-tls-passthrough=true
###     - -enable-cert-manager=true

# Attach Domain to the external ip of nginx load balancer
#### kubectl get svc -n ingress-nginx

#### install cert manager
### helm repo add jetstack https://charts.jetstack.io
### helm repo update
### helm upgrade --install cert-manager jetstack/cert-manager \
  --namespace cert-manager \
  --create-namespace \
  --atomic \
  --version v1.13.3 \
  --set installCRDs=true
### kubectl get po -n cert-manager

# Install issuer
### kubectl apply -f issuer.yaml
### kubectl get issuer

# Deploy webserver helmchart
### helm install web web-server-helmchart/
### kubectl get po

# Troubleshoot commands
### kubectl get issuer
### kubectl get certificate
### kubectl get certificaterequest
### kubectl get order
### kubectl get challenge