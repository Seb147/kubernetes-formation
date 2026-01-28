# Update the deployment to add resources requests & limits on the container
```
kubectl apply -f ./deployment.yaml
```

# Deploy the HPA
```
kubectl apply -f ./HorizontalPodAutoscaler.yaml -n ns-demo
```

# Stress the system to see the HPA in action
```
kubectl run apache-bench --image=alpine --rm -it -- /bin/sh -c "apk add --no-cache apache2-utils; ab -n 500000 -c 100 http://hello-world-service.ns-demo.svc.cluster.local/"
```
