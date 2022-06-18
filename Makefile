
DOCKER_ARGS ?=

docker-build:
	docker build $(DOCKER_ARGS) -t nginx-custom .
