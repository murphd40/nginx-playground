
DOCKER_ARGS ?=

docker-build: docker-build-gateway docker-build-service

docker-build-gateway:
	docker build $(DOCKER_ARGS) -t nginx-gateway ./gateway

docker-build-service:
	docker build $(DOCKER_ARGS) -t resource-service ./service

deploy:
	kubectl apply -f kubernetes/gateway.yaml
	kubectl apply -f kubernetes/resource-service.yaml

undeploy:
	kubectl delete -f kubernetes/gateway.yaml
	kubectl delete -f kubernetes/resource-service.yaml
