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
make deploy
```

## Create tunnel

in another terminal window, run

```
minikube tunnel
```

## Get URL

```
minikube service list
```

e.g. `http://192.168.59.124:31867`
