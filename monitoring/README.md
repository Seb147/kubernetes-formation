# Add the Prometheus repo to Helm
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts

# Deploy the Helm Chart with a custom
helm upgrade --install -f kube-stack-config.yaml prometheus-community prometheus-community/kube-prometheus-stack


# Download and import the Dahsboard for monitoring k3s cluster into Grafana
https://grafana.com/grafana/dashboards/15282-k8s-rke-cluster-monitoring/
