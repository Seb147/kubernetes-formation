```
sudo -i
```

# Installer k3s sur votre VM :
```
curl -sfL https://get.k3s.io | sh -
````

# Vérifier que le service tourne
```
systemctl status k3s.service
kubectl cluster-info
```

# Déployer un « Hello World »
```
kubectl create deployment hello-world --image=nginx
```

# Vérifier que tout s’est bien déployé
```
kubectl get deployments
kubectl get pods
````

# Exposer le pod pour pouvoir y accéder
```
kubectl expose deployment hello-world --type=NodePort --port=80
```

# Récupérer l'IP
```
CLUSTER_IP=$(kubectl get svc -o json | jq -r '.items[] | select(.metadata.name == "hello-world") | .spec.clusterIP')
```

# Tester la connexion
```
curl http://${CLUSTER_IP}
```
