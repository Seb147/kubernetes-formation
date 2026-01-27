# Apply Manifest

kubectl apply -f ./hello-world.yaml

# Verify in k9s that the objects have been created successfully

* Service : nginx-service, Endpoints should have 3 Ips, correponding to the replica defined in the deployemnt
* Ingress : hello-world, should be configured with /test and 3 backend services as previous

# Tail the logs of the service

kubectl logs -f svc/nginx-service -n hello-world

# Test the URL

In your browser, go to https://k8s-formation.labneosoft.fr/test

You should see 

```
Welcome to nginx!
If you see this page, the nginx web server is successfully installed and working. Further configuration is required.

For online documentation and support please refer to nginx.org.
Commercial support is available at nginx.com.

Thank you for using nginx.
```

And one line in the tail log console
