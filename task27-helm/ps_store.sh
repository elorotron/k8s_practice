#!/bin/bash

htpasswd_path="/home/ubuntu/github/k8s_practice/task27-helm/passwd/.htpasswd"
current_version=""

# Function to get the latest version from AWS SSM
get_latest_version() {
    aws ssm get-parameters --name webserver_passwd --region eu-central-1 --output text --query Parameters[].Version
}

# Function to get the latest password and update Kubernetes resources
update_kubernetes_resources() {
    aws ssm get-parameters --name webserver_passwd --region eu-central-1 --with-decryption --output text --query Parameters[].Value > "$htpasswd_path"
    kubectl delete secret htpasswd-secret
    kubectl create secret generic htpasswd-secret --from-file="$htpasswd_path"
    kubectl rollout restart deployment/web-deployment
}

while true; do
    latest_version=$(get_latest_version)

    if [[ "$latest_version" -gt "$current_version" ]]; then
        update_kubernetes_resources
        current_version="$latest_version"
    fi

    sleep 10
done