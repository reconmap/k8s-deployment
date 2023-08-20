
# Reconmap on Kubernetes

## Requirements

- Kubernetes 1.24 or greater

## Local dev requirements

- Make
- Minikube (https://minikube.sigs.k8s.io/docs/start/)
- Minikube ingress controller addon (https://kubernetes.github.io/ingress-nginx/deploy/)

## Provisioning

```shell
kubectl create secret generic redis-password --from-literal=value=REconDIS
make
```

## Tear down

```shell
make clean
```

## Troubleshooting

```shell
minikube start
kubectl proxy
minikube dashboard
```


