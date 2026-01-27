# Install Helm
```
curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-4 | bash
```

# Deploy k8s Dashboard

## Add kubernetes-dashboard repository
```
helm repo add kubernetes-dashboard https://kubernetes.github.io/dashboard/
```

## Deploy a Helm Release named "kubernetes-dashboard" using the kubernetes-dashboard chart
```
helm upgrade --install kubernetes-dashboard kubernetes-dashboard/kubernetes-dashboard --create-namespace --namespace kubernetes-dashboard
```

# Create Service Account
kubectl apply -f .

# Generate Bearer Token
kubectl -n kubernetes-dashboard create token admin-user

# Expose port
```
kubectl -n kubernetes-dashboard port-forward svc/kubernetes-dashboard-kong-proxy 8443:443 --address [INTERNAL_IP_OF_THE_VM]
```
