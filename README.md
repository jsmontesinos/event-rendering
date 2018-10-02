# Event Rendering

An investigation project to test Kubernetes.

## Steps to reproduce

1. Install minikube and kubernetes on Ubuntu 18.04: [https://computingforgeeks.com/how-to-install-minikube-on-ubuntu-18-04/]
2. Start minikube kubernetes cluster: minikube start
3. Run minikube docker daemon: eval $(minikube docker-env)
4. Build the api-backend image: cd api-backend; ./buildAndRunImage.sh
5. Run the node service: kubectl apply -f deployment/nodejs.yaml
6. Load the nginx configuration: kubectl create -f deployment/nginx-reverseproxy-configmap.yam
7. Run nginx proxy service: kubectl apply -f deployment/nginx-reverseproxy.yaml

Some useful commands:

```
# delete all pods
kubectl delete --all pods --namespace=default

# deete all deployments
kubectl delete --all deployments --namespace=default
 
# delete all services
kubectl delete --all services --namespace=default
```