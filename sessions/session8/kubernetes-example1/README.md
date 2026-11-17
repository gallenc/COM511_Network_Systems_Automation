## More complete example

This example has been forked and simplified from the tutorial [https://github.com/shazforiot/k8s-beginner-project](https://github.com/shazforiot/k8s-beginner-project)

```
kubernetes-example1/
├── app/
│   ├── index.js          # Node.js application
│   └── package.json      # Dependencies
├── k8s/
│   ├── namespace.yaml    # Namespace definition
│   ├── deployment.yaml   # Pod deployment
│   └── service.yaml      # Service exposure
├── Dockerfile            # Container image
└── README.md
```


### 1. Build Docker Image (Local)

```bash
# Build the image
docker build -t k8s-demo-app:latest .

# Test locally
docker run -p 3000:3000 k8s-demo-app:latest
# Visit http://localhost:3000
```

### 2. Deploy to Kubernetes

```bash
# Create namespace
kubectl apply -f k8s/namespace.yaml

# Deploy all resources
kubectl apply -f k8s/configmap.yaml
kubectl apply -f k8s/deployment.yaml
kubectl apply -f k8s/service.yaml

# Check status
kubectl get all -n k8s-demo
```
(dont forget to clean up the demo at the end)

### 3. Access the Application at [http:/localhost:80](http:/localhost:80)

```bash
# For LoadBalancer (Docker Desktop)
kubectl get svc -n k8s-demo
# Access via EXTERNAL-IP:80

```

## Kubernetes Concepts Covered

| File | Concept | Description |
|------|---------|-------------|
| `namespace.yaml` | Namespace | Logical isolation of resources |
| `deployment.yaml` | Deployment | Pod management & rolling updates |
| `service.yaml` | Service | Load balancing & service discovery |
| `ingress.yaml` | Ingress | HTTP/HTTPS routing |


## Common Commands

### View Resources

```bash
# All resources in namespace
kubectl get all -n k8s-demo

# Pods with more details
kubectl get pods -n k8s-demo -o wide

# Watch pods in real-time
kubectl get pods -n k8s-demo -w
```

### Debugging

```bash
# Pod logs
kubectl logs -f <pod-name> -n k8s-demo

# Describe pod (events, status)
kubectl describe pod <pod-name> -n k8s-demo

# Execute command in pod
kubectl exec -it <pod-name> -n k8s-demo -- sh
```

### Scaling

```bash
# Manual scaling
kubectl scale deployment k8s-demo-app -n k8s-demo --replicas=5

# now see more pods
kubectl get pods -n k8s-demo -o wide

```

### Cleanup (dont forget to do this at the end)

```bash
# Delete all resources
kubectl delete -f k8s/

# Or delete namespace (removes everything)
kubectl delete namespace k8s-demo
```

