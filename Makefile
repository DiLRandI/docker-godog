DOCKER_REPO=deleema1/godog
BUILD_TAG=local
TAG=?latest

build:
	docker build -t $(DOCKER_REPO):$(BUILD_TAG) .

tag:
	docker tag $(DOCKER_REPO):$(BUILD_TAG) $(DOCKER_REPO):$(TAG)

tag-latest:
	docker tag $(DOCKER_REPO):$(BUILD_TAG) $(DOCKER_REPO):latest

push: tag
	docker push $(DOCKER_REPO):$(TAG)

push-latest: tag-latest
	docker push $(DOCKER_REPO):latest