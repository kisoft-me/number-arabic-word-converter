DOCKER_REPO_NAME=kisoft/number-arabic-word-converter
DOCKER_TAG=latest
build:
	docker build --quiet -t $(DOCKER_REPO_NAME):$(DOCKER_TAG) .

push:
	docker push --quiet -t $(DOCKER_REPO_NAME):$(DOCKER_TAG) .

run: build
	docker run -it -p 3000:3000 $(DOCKER_REPO_NAME):$(DOCKER_TAG)
