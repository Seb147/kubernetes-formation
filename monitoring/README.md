# Deploy the Helm Chart with a custom configuration
```
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm upgrade --install -f kube-stack-config.yaml prometheus-community prometheus-community/kube-prometheus-stack
```

# Import the grafana-dashboard.json as a Grafana Dashboard