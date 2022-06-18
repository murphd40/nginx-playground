# How To Use

## Start minikube

```
minikube start --vm-driver=virtualbox
```

## Use minikube docker env

```
eval $(minikube docker-env)
```

## Build Docker image

```
make docker-build
```

## Create deployment

```
kubectl create deploy nginx --image=nginx-custom:latest --replicas=1
kubectl patch deploy nginx --type='json' \
-p='[{"op": "replace", "path": "/spec/template/spec/containers/0/imagePullPolicy", "value": "IfNotPresent"}]'
```

## Create tunnel

in another terminal window, run

```
minikube tunnel
```

## Expose nginx deployment

```
kubectl expose deploy nginx --port 8080 --type LoadBalancer
```

## Get URL

```
minikube service list
```

e.g. `http://192.168.59.124:31867`
