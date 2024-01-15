# kubectl create secret generic htpasswd-secret --from-file="path_to_.htpasswd"

# TLS
# for self-signet certificate
# openssl req -x509 -nodes -days 9999 -newkey rsa:2048 -keyout certs/ingress-tls.key -out certs/ingress-tls.crt
# kubectl create secret tls ingress-cert --namespace dev --key=certs/ingress-tls.key --cert=certs/ingress-tls.crt -o yaml

# install ingress-nginx

# helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
# helm repo update

# helm upgrade --install ingress-nginx ingress-nginx/ingress-nginx \
#  --namespace ingress-nginx \
#  --create-namespace \
#  --timeout 600s \
#  --debug \
#  --set controller.publishService.enabled=true

# install cert manager

# helm repo add jetstack https://charts.jetstack.io
# helm repo update

# helm upgrade --install cert-manager jetstack/cert-manager \
#  --namespace cert-manager \
#  --create-namespace \
#  --atomic \
#  --version v1.13.3 \
#  --set installCRDs=true