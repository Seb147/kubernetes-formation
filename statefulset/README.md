# Install the k8s Operator

```
kubectl apply --server-side -f  https://raw.githubusercontent.com/cloudnative-pg/cloudnative-pg/release-1.28/releases/cnpg-1.28.0.yaml

# Verification
kubectl rollout status deployment -n cnpg-system cnpg-controller-manager
```

# Use the Operator to deploy a postgresql cluster

```
kubectl create ns postgresql
kubectl apply -f ./postgresql-cluster.yaml -n postgresql

kubectl get pods -l cnpg.io/cluster=postgresql-cluster -n postgresql
```
