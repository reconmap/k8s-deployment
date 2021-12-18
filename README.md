
# Reconmap on Kubernetes

## Requirements

- Kubernetes 1.22 or greater

## Local dev requirements

- Minikube
- Minikube ingress controller addon (https://kubernetes.github.io/ingress-nginx/deploy/)

## Setup instructions

```shell
kubectl create secret generic redis-password --from-literal=value=REconDIS
```

## Troubleshooting

```shell
minikube service web-client-service --url
kubectl proxy
minikube start
minikube dashboard
```


